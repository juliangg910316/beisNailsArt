// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Service _$ServiceFromJson(Map<String, dynamic> json) => _Service(
      id: (json['id'] as num).toInt(),
      speciality:
          Speciality.fromJson(json['speciality'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      duration: DateTime.parse(json['duration'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ServiceToJson(_Service instance) => <String, dynamic>{
      'id': instance.id,
      'speciality': instance.speciality,
      'price': instance.price,
      'duration': instance.duration.toIso8601String(),
      'name': instance.name,
      'description': instance.description,
    };
