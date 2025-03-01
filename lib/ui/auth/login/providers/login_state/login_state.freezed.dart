// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  bool get isPosting;
  bool get isFormPosted;
  bool get isValid;
  Email get email;
  Password get password;
  String get errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.isPosting, isPosting) ||
                other.isPosting == isPosting) &&
            (identical(other.isFormPosted, isFormPosted) ||
                other.isFormPosted == isFormPosted) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPosting, isFormPosted, isValid,
      email, password, errorMessage);

  @override
  String toString() {
    return 'LoginState(isPosting: $isPosting, isFormPosted: $isFormPosted, isValid: $isValid, email: $email, password: $password, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isPosting,
      bool isFormPosted,
      bool isValid,
      Email email,
      Password password,
      String errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPosting = null,
    Object? isFormPosted = null,
    Object? isValid = null,
    Object? email = null,
    Object? password = null,
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
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoginState implements LoginState {
  const _LoginState(
      {this.isPosting = false,
      this.isFormPosted = false,
      this.isValid = false,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
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
  final String errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.isPosting, isPosting) ||
                other.isPosting == isPosting) &&
            (identical(other.isFormPosted, isFormPosted) ||
                other.isFormPosted == isFormPosted) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPosting, isFormPosted, isValid,
      email, password, errorMessage);

  @override
  String toString() {
    return 'LoginState(isPosting: $isPosting, isFormPosted: $isFormPosted, isValid: $isValid, email: $email, password: $password, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isPosting,
      bool isFormPosted,
      bool isValid,
      Email email,
      Password password,
      String errorMessage});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isPosting = null,
    Object? isFormPosted = null,
    Object? isValid = null,
    Object? email = null,
    Object? password = null,
    Object? errorMessage = null,
  }) {
    return _then(_LoginState(
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
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
