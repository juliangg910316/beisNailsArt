// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterState {
  bool get isPosting;
  bool get isFormPosted;
  bool get isValid;
  Email get email;
  Password get password;
  ConfirmedPassword get confirmPassword;
  String get errorMessage;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      _$RegisterStateCopyWithImpl<RegisterState>(
          this as RegisterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterState &&
            (identical(other.isPosting, isPosting) ||
                other.isPosting == isPosting) &&
            (identical(other.isFormPosted, isFormPosted) ||
                other.isFormPosted == isFormPosted) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPosting, isFormPosted, isValid,
      email, password, confirmPassword, errorMessage);

  @override
  String toString() {
    return 'RegisterState(isPosting: $isPosting, isFormPosted: $isFormPosted, isValid: $isValid, email: $email, password: $password, confirmPassword: $confirmPassword, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) _then) =
      _$RegisterStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isPosting,
      bool isFormPosted,
      bool isValid,
      Email email,
      Password password,
      ConfirmedPassword confirmPassword,
      String errorMessage});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPosting = null,
    Object? isFormPosted = null,
    Object? isValid = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? errorMessage = null,
  }) {
    return _then(_self.copyWith(
      isPosting: null == isPosting
          ? _self.isPosting
          : isPosting // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormPosted: null == isFormPosted
          ? _self.isFormPosted
          : isFormPosted // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _self.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RegisterState implements RegisterState {
  const _RegisterState(
      {this.isPosting = false,
      this.isFormPosted = false,
      this.isValid = false,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.confirmPassword = const ConfirmedPassword.pure(),
      this.errorMessage = ''});

  @override
  @JsonKey()
  final bool isPosting;
  @override
  @JsonKey()
  final bool isFormPosted;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final ConfirmedPassword confirmPassword;
  @override
  @JsonKey()
  final String errorMessage;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            (identical(other.isPosting, isPosting) ||
                other.isPosting == isPosting) &&
            (identical(other.isFormPosted, isFormPosted) ||
                other.isFormPosted == isFormPosted) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPosting, isFormPosted, isValid,
      email, password, confirmPassword, errorMessage);

  @override
  String toString() {
    return 'RegisterState(isPosting: $isPosting, isFormPosted: $isFormPosted, isValid: $isValid, email: $email, password: $password, confirmPassword: $confirmPassword, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) _then) =
      __$RegisterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isPosting,
      bool isFormPosted,
      bool isValid,
      Email email,
      Password password,
      ConfirmedPassword confirmPassword,
      String errorMessage});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isPosting = null,
    Object? isFormPosted = null,
    Object? isValid = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? errorMessage = null,
  }) {
    return _then(_RegisterState(
      isPosting: null == isPosting
          ? _self.isPosting
          : isPosting // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormPosted: null == isFormPosted
          ? _self.isFormPosted
          : isFormPosted // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _self.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
