// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proffesionals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Proffesional _$ProffesionalFromJson(Map<String, dynamic> json) =>
    _Proffesional(
      id: json['id'] as String,
      name: json['name'] as String,
      speciality:
          Speciality.fromJson(json['speciality'] as Map<String, dynamic>),
      links: Map<String, String>.from(json['links'] as Map),
      photoUrl: json['photoUrl'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ProffesionalToJson(_Proffesional instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'speciality': instance.speciality,
      'links': instance.links,
      'photoUrl': instance.photoUrl,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
    };
