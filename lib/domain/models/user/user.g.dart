// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String? ?? '0',
      name: json['name'] as String?,
      picture: json['picture'] as String?,
      address: json['address'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.client,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picture': instance.picture,
      'address': instance.address,
      'gender': instance.gender,
      'date_of_birth': instance.birthDate?.toIso8601String(),
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.proffesional: 'proffesional',
  Role.client: 'client',
};
