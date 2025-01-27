// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      picture: json['picture'] as String?,
      address: json['address'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'address': instance.address,
      'birthDate': instance.birthDate?.toIso8601String(),
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.proffesional: 'proffesional',
  Role.client: 'client',
};
