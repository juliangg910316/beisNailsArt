// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Speciality _$SpecialityFromJson(Map<String, dynamic> json) => _Speciality(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String? ?? '',
    );

Map<String, dynamic> _$SpecialityToJson(_Speciality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };
