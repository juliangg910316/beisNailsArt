// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthState {
  @JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
  AuthResponse? get authResponse;
  bool get isRegisterSuccessfully;
  bool get isSignInSuccessfully;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<AuthState> get copyWith =>
      _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState &&
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

  @override
  String toString() {
    return 'AuthState(authResponse: $authResponse, isRegisterSuccessfully: $isRegisterSuccessfully, isSignInSuccessfully: $isSignInSuccessfully)';
  }
}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
      _$AuthStateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
      AuthResponse? authResponse,
      bool isRegisterSuccessfully,
      bool isSignInSuccessfully});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = freezed,
    Object? isRegisterSuccessfully = null,
    Object? isSignInSuccessfully = null,
  }) {
    return _then(_self.copyWith(
      authResponse: freezed == authResponse
          ? _self.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse?,
      isRegisterSuccessfully: null == isRegisterSuccessfully
          ? _self.isRegisterSuccessfully
          : isRegisterSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccessfully: null == isSignInSuccessfully
          ? _self.isSignInSuccessfully
          : isSignInSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AuthState implements AuthState {
  const _AuthState(
      {@JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
      this.authResponse,
      this.isRegisterSuccessfully = false,
      this.isSignInSuccessfully = false});
  factory _AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  @override
  @JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
  final AuthResponse? authResponse;
  @override
  @JsonKey()
  final bool isRegisterSuccessfully;
  @override
  @JsonKey()
  final bool isSignInSuccessfully;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
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

  @override
  String toString() {
    return 'AuthState(authResponse: $authResponse, isRegisterSuccessfully: $isRegisterSuccessfully, isSignInSuccessfully: $isSignInSuccessfully)';
  }
}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) _then) =
      __$AuthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
      AuthResponse? authResponse,
      bool isRegisterSuccessfully,
      bool isSignInSuccessfully});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authResponse = freezed,
    Object? isRegisterSuccessfully = null,
    Object? isSignInSuccessfully = null,
  }) {
    return _then(_AuthState(
      authResponse: freezed == authResponse
          ? _self.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse?,
      isRegisterSuccessfully: null == isRegisterSuccessfully
          ? _self.isRegisterSuccessfully
          : isRegisterSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccessfully: null == isSignInSuccessfully
          ? _self.isSignInSuccessfully
          : isSignInSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
