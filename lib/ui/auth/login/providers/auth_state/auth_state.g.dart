// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthState _$AuthStateFromJson(Map<String, dynamic> json) => _AuthState(
      authResponse:
          _authResponseFromJson(json['authResponse'] as Map<String, dynamic>?),
      isRegisterSuccessfully: json['isRegisterSuccessfully'] as bool? ?? false,
      isSignInSuccessfully: json['isSignInSuccessfully'] as bool? ?? false,
    );

Map<String, dynamic> _$AuthStateToJson(_AuthState instance) =>
    <String, dynamic>{
      'authResponse': _authResponseToJson(instance.authResponse),
      'isRegisterSuccessfully': instance.isRegisterSuccessfully,
      'isSignInSuccessfully': instance.isSignInSuccessfully,
    };
