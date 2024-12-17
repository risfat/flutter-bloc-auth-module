import 'package:bloc_clean_architecture/src/common/enums.dart';
import 'package:bloc_clean_architecture/src/domain/usecase/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._auth) : super(SignInFormState.initial()) {
    on<_Initial>(_onInitial);
    on<_EmailOnChanged>(_onEmailChanged);
    on<_PasswordOnChanged>(_onPasswordChanged);
    on<_UserNameOnChanged>(_onUserNameChanged);
    on<_PhoneNumberOnChanged>(_onPhoneNumberChanged);
    on<_SignInWithEmail>(_onSignInWithEmail);
    // on<_SignInWithGoogle>(_onSignInWithGoogle);
    // on<_SignInWithApple>(_onSignInWithApple);
    on<_SendOtp>(_onSendOtp);
    on<_VerifyOtp>(_onVerifyOtp);
    on<_SignUpWithEmail>(_onSignUpWithEmail);
  }

  final Auth _auth;

  void _onInitial(_Initial event, Emitter<SignInFormState> emit) {
    emit(SignInFormState.initial());
  }

  void _onEmailChanged(_EmailOnChanged event, Emitter<SignInFormState> emit) {
    final email = event.email;
    String? emailError;
    if (email.isEmpty) {
      emailError = 'Email cannot be empty';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      emailError = 'Enter a valid email address';
    }
    emit(state.copyWith(email: email, emailError: emailError));
  }

  void _onPasswordChanged(
      _PasswordOnChanged event, Emitter<SignInFormState> emit) {
    final password = event.password;
    String? passwordError;
    if (password.isEmpty) {
      passwordError = 'Password cannot be empty';
    } else if (password.length < 6) {
      passwordError = 'Password must be at least 6 characters long';
    }
    emit(state.copyWith(password: password, passwordError: passwordError));
  }

  void _onUserNameChanged(
      _UserNameOnChanged event, Emitter<SignInFormState> emit) {
    final userName = event.name;
    emit(state.copyWith(userName: userName));
  }

  void _onPhoneNumberChanged(
      _PhoneNumberOnChanged event, Emitter<SignInFormState> emit) {
    final phoneNumber = event.number;
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  Future<void> _onSignInWithEmail(
      _SignInWithEmail event, Emitter<SignInFormState> emit) async {
    if (state.emailError != null || state.passwordError != null) {
      return; // Don't proceed if there are validation errors
    }

    emit(state.copyWith(state: RequestState.loading));
    final result = await _auth.executeLogin(state.email, state.password);
    result.fold(
      (failure) => emit(state.copyWith(
        state: RequestState.error,
        message: failure.message,
      )),
      (user) => emit(state.copyWith(
        state: RequestState.loaded,
        message: 'Sign in successful',
      )),
    );
  }

  Future<void> _onSendOtp(_SendOtp event, Emitter<SignInFormState> emit) async {
    if (state.emailError != null) {
      return; // Don't proceed if there are email validation errors
    }

    emit(state.copyWith(
        state: RequestState.loading,
        message: '',
        otp: null,
        isOtpVerified: false));
    final result = await _auth.executeSendOtp(state.email);
    result.fold(
        (failure) => emit(state.copyWith(
              state: RequestState.error,
              message: failure.message,
            )), (isVerified) {
      if (isVerified) {
        emit(state.copyWith(
          state: RequestState.loaded,
          message: 'OTP sent successfully',
        ));
      } else {
        emit(state.copyWith(
          state: RequestState.error,
          message: 'Otp not sent. Please try again later.',
        ));
      }
    });
  }

  Future<void> _onVerifyOtp(
      _VerifyOtp event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(state: RequestState.loading));
    final result = await _auth.executeVerifyOtp(state.email, event.otp);
    result.fold(
      (failure) => emit(state.copyWith(
        state: RequestState.error,
        message: failure.message,
      )),
      (isVerified) {
        if (isVerified) {
          emit(state.copyWith(
            state: RequestState.loaded,
            isOtpVerified: true,
            otp: event.otp,
            message: 'OTP verified successfully',
          ));
        } else {
          emit(state.copyWith(
            state: RequestState.error,
            message: 'Invalid OTP. Please try again.',
          ));
        }
      },
    );
  }

  _onSignUpWithEmail(
      _SignUpWithEmail event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(state: RequestState.loading, isSignupCompleted: false));
    final result = await _auth.executeRegisterAfterOtpMatched(
      state.email,
      state.password,
      event.firstName,
      event.lastName,
      event.mobile,
      state.otp!,
    );
    result.fold(
      (failure) => emit(state.copyWith(
        state: RequestState.error,
        message: failure.message,
        isSignupCompleted: false,
      )),
      (user) => emit(state.copyWith(
        state: RequestState.loaded,
        isSignupCompleted: true,
        message: 'Sign up successful',
      )),
    );
  }

  //
  // Future<void> _onSignInWithGoogle(_SignInWithGoogle event, Emitter<SignInFormState> emit) async {
  //   emit(state.copyWith(state: RequestState.loading));
  //   final result = await _signInWithGoogle.execute();
  //   result.fold(
  //         (failure) => emit(state.copyWith(
  //       state: RequestState.error,
  //       message: failure.message,
  //     )),
  //         (user) => emit(state.copyWith(
  //       state: RequestState.loaded,
  //       message: 'Google sign in successful',
  //     )),
  //   );
  // }
  //
  // Future<void> _onSignInWithApple(_SignInWithApple event, Emitter<SignInFormState> emit) async {
  //   emit(state.copyWith(state: RequestState.loading));
  //   final result = await _signInWithApple.execute();
  //   result.fold(
  //         (failure) => emit(state.copyWith(
  //       state: RequestState.error,
  //       message: failure.message,
  //     )),
  //         (user) => emit(state.copyWith(
  //       state: RequestState.loaded,
  //       message: 'Apple sign in successful',
  //     )),
  //   );
  // }
}
