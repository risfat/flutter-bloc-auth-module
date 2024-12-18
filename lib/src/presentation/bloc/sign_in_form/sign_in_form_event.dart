part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.initial() = _Initial;
  const factory SignInFormEvent.signInWithEmail() = _SignInWithEmail;
  const factory SignInFormEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory SignInFormEvent.signInWithApple() = _SignInWithApple;
  const factory SignInFormEvent.sendOtp() = _SendOtp;
  const factory SignInFormEvent.verifyOtp(String otp) = _VerifyOtp;
  const factory SignInFormEvent.signUpWithEmail(
      String firstName, String lastName, String mobile) = _SignUpWithEmail;
  // TextField events
  const factory SignInFormEvent.emailOnChanged(
    String email,
  ) = _EmailOnChanged;
  const factory SignInFormEvent.passwordOnChanged(
    String password,
  ) = _PasswordOnChanged;
  const factory SignInFormEvent.phoneNumberOnChanged(
    String number,
  ) = _PhoneNumberOnChanged;
  const factory SignInFormEvent.userNameOnChanged(String name) =
      _UserNameOnChanged;
  const factory SignInFormEvent.resetStateError() = _ResetStateError;
}
