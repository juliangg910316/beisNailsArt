// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      authResponse:
          _authResponseFromJson(json['authResponse'] as Map<String, dynamic>?),
      isRegisterSuccessfully: json['isRegisterSuccessfully'] as bool? ?? false,
      isSignInSuccessfully: json['isSignInSuccessfully'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'authResponse': _authResponseToJson(instance.authResponse),
      'isRegisterSuccessfully': instance.isRegisterSuccessfully,
      'isSignInSuccessfully': instance.isSignInSuccessfully,
    };
