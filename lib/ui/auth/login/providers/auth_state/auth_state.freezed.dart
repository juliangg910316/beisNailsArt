// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  @JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
  AuthResponse? get authResponse => throw _privateConstructorUsedError;
  bool get isRegisterSuccessfully => throw _privateConstructorUsedError;
  bool get isSignInSuccessfully => throw _privateConstructorUsedError;

  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {@JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
      AuthResponse? authResponse,
      bool isRegisterSuccessfully,
      bool isSignInSuccessfully});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = freezed,
    Object? isRegisterSuccessfully = null,
    Object? isSignInSuccessfully = null,
  }) {
    return _then(_value.copyWith(
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse?,
      isRegisterSuccessfully: null == isRegisterSuccessfully
          ? _value.isRegisterSuccessfully
          : isRegisterSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccessfully: null == isSignInSuccessfully
          ? _value.isSignInSuccessfully
          : isSignInSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
      AuthResponse? authResponse,
      bool isRegisterSuccessfully,
      bool isSignInSuccessfully});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = freezed,
    Object? isRegisterSuccessfully = null,
    Object? isSignInSuccessfully = null,
  }) {
    return _then(_$AuthStateImpl(
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse?,
      isRegisterSuccessfully: null == isRegisterSuccessfully
          ? _value.isRegisterSuccessfully
          : isRegisterSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccessfully: null == isSignInSuccessfully
          ? _value.isSignInSuccessfully
          : isSignInSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {@JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
      this.authResponse,
      this.isRegisterSuccessfully = false,
      this.isSignInSuccessfully = false});

  factory _$AuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateImplFromJson(json);

  @override
  @JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
  final AuthResponse? authResponse;
  @override
  @JsonKey()
  final bool isRegisterSuccessfully;
  @override
  @JsonKey()
  final bool isSignInSuccessfully;

  @override
  String toString() {
    return 'AuthState(authResponse: $authResponse, isRegisterSuccessfully: $isRegisterSuccessfully, isSignInSuccessfully: $isSignInSuccessfully)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse) &&
            (identical(other.isRegisterSuccessfully, isRegisterSuccessfully) ||
                other.isRegisterSuccessfully == isRegisterSuccessfully) &&
            (identical(other.isSignInSuccessfully, isSignInSuccessfully) ||
                other.isSignInSuccessfully == isSignInSuccessfully));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, authResponse, isRegisterSuccessfully, isSignInSuccessfully);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateImplToJson(
      this,
    );
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {@JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
      final AuthResponse? authResponse,
      final bool isRegisterSuccessfully,
      final bool isSignInSuccessfully}) = _$AuthStateImpl;

  factory _AuthState.fromJson(Map<String, dynamic> json) =
      _$AuthStateImpl.fromJson;

  @override
  @JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
  AuthResponse? get authResponse;
  @override
  bool get isRegisterSuccessfully;
  @override
  bool get isSignInSuccessfully;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
