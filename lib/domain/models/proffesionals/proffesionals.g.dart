// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proffesionals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Proffesional _$ProffesionalFromJson(Map<String, dynamic> json) =>
    _Proffesional(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      speciality:
          Speciality.fromJson(json['speciality'] as Map<String, dynamic>),
      links: Map<String, String>.from(json['links'] as Map),
      photoUrl: json['photoUrl'] as String? ?? 'assets/images/bei.jpeg',
      rating: (json['rating'] as num?)?.toDouble() ?? 5,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 100,
    );

Map<String, dynamic> _$ProffesionalToJson(_Proffesional instance) =>
    <String, dynamic>{
      'user': instance.user,
      'speciality': instance.speciality,
      'links': instance.links,
      'photoUrl': instance.photoUrl,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
    };
