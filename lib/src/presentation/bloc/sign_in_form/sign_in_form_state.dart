part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required RequestState state,
    required String message,
    required String email,
    required String password,
    @Default('') String userName,
    @Default('') String phoneNumber,
    @Default(false) bool isOtpVerified,
    @Default(false) bool isSignupCompleted,
    String? otp,
    String? emailError,
    String? passwordError,
  }) = _SignInFormState;

  factory SignInFormState.initial() => const SignInFormState(
        state: RequestState.empty,
        message: '',
        email: '',
        password: '',
        userName: '',
        phoneNumber: '',
        isOtpVerified: false,
        isSignupCompleted: false,
        otp: null,
        emailError: null,
        passwordError: null,
      );
}
