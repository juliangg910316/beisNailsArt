// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proffesionals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProffesionalImpl _$$ProffesionalImplFromJson(Map<String, dynamic> json) =>
    _$ProffesionalImpl(
      id: json['id'] as String,
      speciality:
          Speciality.fromJson(json['speciality'] as Map<String, dynamic>),
      links: Map<String, String>.from(json['links'] as Map),
    );

Map<String, dynamic> _$$ProffesionalImplToJson(_$ProffesionalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'speciality': instance.speciality,
      'links': instance.links,
    };
