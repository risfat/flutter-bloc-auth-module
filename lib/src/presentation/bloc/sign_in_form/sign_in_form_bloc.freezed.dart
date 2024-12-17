// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignInFormEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInFormEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SignInWithEmailImplCopyWith<$Res> {
  factory _$$SignInWithEmailImplCopyWith(_$SignInWithEmailImpl value,
          $Res Function(_$SignInWithEmailImpl) then) =
      __$$SignInWithEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithEmailImpl>
    implements _$$SignInWithEmailImplCopyWith<$Res> {
  __$$SignInWithEmailImplCopyWithImpl(
      _$SignInWithEmailImpl _value, $Res Function(_$SignInWithEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithEmailImpl implements _SignInWithEmail {
  const _$SignInWithEmailImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return signInWithEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return signInWithEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmail implements SignInFormEvent {
  const factory _SignInWithEmail() = _$SignInWithEmailImpl;
}

/// @nodoc
abstract class _$$SignInWithGoogleImplCopyWith<$Res> {
  factory _$$SignInWithGoogleImplCopyWith(_$SignInWithGoogleImpl value,
          $Res Function(_$SignInWithGoogleImpl) then) =
      __$$SignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithGoogleImpl>
    implements _$$SignInWithGoogleImplCopyWith<$Res> {
  __$$SignInWithGoogleImplCopyWithImpl(_$SignInWithGoogleImpl _value,
      $Res Function(_$SignInWithGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithGoogleImpl implements _SignInWithGoogle {
  const _$SignInWithGoogleImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements SignInFormEvent {
  const factory _SignInWithGoogle() = _$SignInWithGoogleImpl;
}

/// @nodoc
abstract class _$$SignInWithAppleImplCopyWith<$Res> {
  factory _$$SignInWithAppleImplCopyWith(_$SignInWithAppleImpl value,
          $Res Function(_$SignInWithAppleImpl) then) =
      __$$SignInWithAppleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithAppleImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithAppleImpl>
    implements _$$SignInWithAppleImplCopyWith<$Res> {
  __$$SignInWithAppleImplCopyWithImpl(
      _$SignInWithAppleImpl _value, $Res Function(_$SignInWithAppleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithAppleImpl implements _SignInWithApple {
  const _$SignInWithAppleImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithApple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithAppleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return signInWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return signInWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return signInWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return signInWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple(this);
    }
    return orElse();
  }
}

abstract class _SignInWithApple implements SignInFormEvent {
  const factory _SignInWithApple() = _$SignInWithAppleImpl;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl();

  @override
  String toString() {
    return 'SignInFormEvent.sendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements SignInFormEvent {
  const factory _SendOtp() = _$SendOtpImpl;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$VerifyOtpImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'SignInFormEvent.verifyOtp(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return verifyOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return verifyOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements SignInFormEvent {
  const factory _VerifyOtp(final String otp) = _$VerifyOtpImpl;

  String get otp;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpWithEmailImplCopyWith<$Res> {
  factory _$$SignUpWithEmailImplCopyWith(_$SignUpWithEmailImpl value,
          $Res Function(_$SignUpWithEmailImpl) then) =
      __$$SignUpWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName, String mobile});
}

/// @nodoc
class __$$SignUpWithEmailImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignUpWithEmailImpl>
    implements _$$SignUpWithEmailImplCopyWith<$Res> {
  __$$SignUpWithEmailImplCopyWithImpl(
      _$SignUpWithEmailImpl _value, $Res Function(_$SignUpWithEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? mobile = null,
  }) {
    return _then(_$SignUpWithEmailImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpWithEmailImpl implements _SignUpWithEmail {
  const _$SignUpWithEmailImpl(this.firstName, this.lastName, this.mobile);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String mobile;

  @override
  String toString() {
    return 'SignInFormEvent.signUpWithEmail(firstName: $firstName, lastName: $lastName, mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithEmailImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, mobile);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpWithEmailImplCopyWith<_$SignUpWithEmailImpl> get copyWith =>
      __$$SignUpWithEmailImplCopyWithImpl<_$SignUpWithEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return signUpWithEmail(firstName, lastName, mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return signUpWithEmail?.call(firstName, lastName, mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signUpWithEmail != null) {
      return signUpWithEmail(firstName, lastName, mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return signUpWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return signUpWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (signUpWithEmail != null) {
      return signUpWithEmail(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmail implements SignInFormEvent {
  const factory _SignUpWithEmail(
          final String firstName, final String lastName, final String mobile) =
      _$SignUpWithEmailImpl;

  String get firstName;
  String get lastName;
  String get mobile;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpWithEmailImplCopyWith<_$SignUpWithEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailOnChangedImplCopyWith<$Res> {
  factory _$$EmailOnChangedImplCopyWith(_$EmailOnChangedImpl value,
          $Res Function(_$EmailOnChangedImpl) then) =
      __$$EmailOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailOnChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailOnChangedImpl>
    implements _$$EmailOnChangedImplCopyWith<$Res> {
  __$$EmailOnChangedImplCopyWithImpl(
      _$EmailOnChangedImpl _value, $Res Function(_$EmailOnChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailOnChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailOnChangedImpl implements _EmailOnChanged {
  const _$EmailOnChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailOnChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOnChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOnChangedImplCopyWith<_$EmailOnChangedImpl> get copyWith =>
      __$$EmailOnChangedImplCopyWithImpl<_$EmailOnChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return emailOnChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return emailOnChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return emailOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return emailOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailOnChanged implements SignInFormEvent {
  const factory _EmailOnChanged(final String email) = _$EmailOnChangedImpl;

  String get email;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailOnChangedImplCopyWith<_$EmailOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordOnChangedImplCopyWith<$Res> {
  factory _$$PasswordOnChangedImplCopyWith(_$PasswordOnChangedImpl value,
          $Res Function(_$PasswordOnChangedImpl) then) =
      __$$PasswordOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordOnChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordOnChangedImpl>
    implements _$$PasswordOnChangedImplCopyWith<$Res> {
  __$$PasswordOnChangedImplCopyWithImpl(_$PasswordOnChangedImpl _value,
      $Res Function(_$PasswordOnChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordOnChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordOnChangedImpl implements _PasswordOnChanged {
  const _$PasswordOnChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordOnChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordOnChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordOnChangedImplCopyWith<_$PasswordOnChangedImpl> get copyWith =>
      __$$PasswordOnChangedImplCopyWithImpl<_$PasswordOnChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return passwordOnChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return passwordOnChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return passwordOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return passwordOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordOnChanged implements SignInFormEvent {
  const factory _PasswordOnChanged(final String password) =
      _$PasswordOnChangedImpl;

  String get password;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordOnChangedImplCopyWith<_$PasswordOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberOnChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberOnChangedImplCopyWith(_$PhoneNumberOnChangedImpl value,
          $Res Function(_$PhoneNumberOnChangedImpl) then) =
      __$$PhoneNumberOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String number});
}

/// @nodoc
class __$$PhoneNumberOnChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PhoneNumberOnChangedImpl>
    implements _$$PhoneNumberOnChangedImplCopyWith<$Res> {
  __$$PhoneNumberOnChangedImplCopyWithImpl(_$PhoneNumberOnChangedImpl _value,
      $Res Function(_$PhoneNumberOnChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$PhoneNumberOnChangedImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberOnChangedImpl implements _PhoneNumberOnChanged {
  const _$PhoneNumberOnChangedImpl(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'SignInFormEvent.phoneNumberOnChanged(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberOnChangedImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberOnChangedImplCopyWith<_$PhoneNumberOnChangedImpl>
      get copyWith =>
          __$$PhoneNumberOnChangedImplCopyWithImpl<_$PhoneNumberOnChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return phoneNumberOnChanged(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return phoneNumberOnChanged?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return phoneNumberOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return phoneNumberOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberOnChanged implements SignInFormEvent {
  const factory _PhoneNumberOnChanged(final String number) =
      _$PhoneNumberOnChangedImpl;

  String get number;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberOnChangedImplCopyWith<_$PhoneNumberOnChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNameOnChangedImplCopyWith<$Res> {
  factory _$$UserNameOnChangedImplCopyWith(_$UserNameOnChangedImpl value,
          $Res Function(_$UserNameOnChangedImpl) then) =
      __$$UserNameOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UserNameOnChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$UserNameOnChangedImpl>
    implements _$$UserNameOnChangedImplCopyWith<$Res> {
  __$$UserNameOnChangedImplCopyWithImpl(_$UserNameOnChangedImpl _value,
      $Res Function(_$UserNameOnChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UserNameOnChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameOnChangedImpl implements _UserNameOnChanged {
  const _$UserNameOnChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SignInFormEvent.userNameOnChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNameOnChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNameOnChangedImplCopyWith<_$UserNameOnChangedImpl> get copyWith =>
      __$$UserNameOnChangedImplCopyWithImpl<_$UserNameOnChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() sendOtp,
    required TResult Function(String otp) verifyOtp,
    required TResult Function(String firstName, String lastName, String mobile)
        signUpWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function(String number) phoneNumberOnChanged,
    required TResult Function(String name) userNameOnChanged,
  }) {
    return userNameOnChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? sendOtp,
    TResult? Function(String otp)? verifyOtp,
    TResult? Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function(String number)? phoneNumberOnChanged,
    TResult? Function(String name)? userNameOnChanged,
  }) {
    return userNameOnChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? sendOtp,
    TResult Function(String otp)? verifyOtp,
    TResult Function(String firstName, String lastName, String mobile)?
        signUpWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function(String number)? phoneNumberOnChanged,
    TResult Function(String name)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (userNameOnChanged != null) {
      return userNameOnChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignUpWithEmail value) signUpWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_UserNameOnChanged value) userNameOnChanged,
  }) {
    return userNameOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_UserNameOnChanged value)? userNameOnChanged,
  }) {
    return userNameOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignUpWithEmail value)? signUpWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_UserNameOnChanged value)? userNameOnChanged,
    required TResult orElse(),
  }) {
    if (userNameOnChanged != null) {
      return userNameOnChanged(this);
    }
    return orElse();
  }
}

abstract class _UserNameOnChanged implements SignInFormEvent {
  const factory _UserNameOnChanged(final String name) = _$UserNameOnChangedImpl;

  String get name;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserNameOnChangedImplCopyWith<_$UserNameOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isOtpVerified => throw _privateConstructorUsedError;
  bool get isSignupCompleted => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get emailError => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String email,
      String password,
      String userName,
      String phoneNumber,
      bool isOtpVerified,
      bool isSignupCompleted,
      String? otp,
      String? emailError,
      String? passwordError});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? email = null,
    Object? password = null,
    Object? userName = null,
    Object? phoneNumber = null,
    Object? isOtpVerified = null,
    Object? isSignupCompleted = null,
    Object? otp = freezed,
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isOtpVerified: null == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignupCompleted: null == isSignupCompleted
          ? _value.isSignupCompleted
          : isSignupCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInFormStateImplCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$SignInFormStateImplCopyWith(_$SignInFormStateImpl value,
          $Res Function(_$SignInFormStateImpl) then) =
      __$$SignInFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String email,
      String password,
      String userName,
      String phoneNumber,
      bool isOtpVerified,
      bool isSignupCompleted,
      String? otp,
      String? emailError,
      String? passwordError});
}

/// @nodoc
class __$$SignInFormStateImplCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$SignInFormStateImpl>
    implements _$$SignInFormStateImplCopyWith<$Res> {
  __$$SignInFormStateImplCopyWithImpl(
      _$SignInFormStateImpl _value, $Res Function(_$SignInFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? email = null,
    Object? password = null,
    Object? userName = null,
    Object? phoneNumber = null,
    Object? isOtpVerified = null,
    Object? isSignupCompleted = null,
    Object? otp = freezed,
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_$SignInFormStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isOtpVerified: null == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignupCompleted: null == isSignupCompleted
          ? _value.isSignupCompleted
          : isSignupCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInFormStateImpl implements _SignInFormState {
  const _$SignInFormStateImpl(
      {required this.state,
      required this.message,
      required this.email,
      required this.password,
      this.userName = '',
      this.phoneNumber = '',
      this.isOtpVerified = false,
      this.isSignupCompleted = false,
      this.otp,
      this.emailError,
      this.passwordError});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool isOtpVerified;
  @override
  @JsonKey()
  final bool isSignupCompleted;
  @override
  final String? otp;
  @override
  final String? emailError;
  @override
  final String? passwordError;

  @override
  String toString() {
    return 'SignInFormState(state: $state, message: $message, email: $email, password: $password, userName: $userName, phoneNumber: $phoneNumber, isOtpVerified: $isOtpVerified, isSignupCompleted: $isSignupCompleted, otp: $otp, emailError: $emailError, passwordError: $passwordError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isOtpVerified, isOtpVerified) ||
                other.isOtpVerified == isOtpVerified) &&
            (identical(other.isSignupCompleted, isSignupCompleted) ||
                other.isSignupCompleted == isSignupCompleted) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      message,
      email,
      password,
      userName,
      phoneNumber,
      isOtpVerified,
      isSignupCompleted,
      otp,
      emailError,
      passwordError);

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      __$$SignInFormStateImplCopyWithImpl<_$SignInFormStateImpl>(
          this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final RequestState state,
      required final String message,
      required final String email,
      required final String password,
      final String userName,
      final String phoneNumber,
      final bool isOtpVerified,
      final bool isSignupCompleted,
      final String? otp,
      final String? emailError,
      final String? passwordError}) = _$SignInFormStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  String get email;
  @override
  String get password;
  @override
  String get userName;
  @override
  String get phoneNumber;
  @override
  bool get isOtpVerified;
  @override
  bool get isSignupCompleted;
  @override
  String? get otp;
  @override
  String? get emailError;
  @override
  String? get passwordError;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
