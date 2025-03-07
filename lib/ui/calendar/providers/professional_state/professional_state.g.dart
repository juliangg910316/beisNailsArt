// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professional_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfessionalState _$ProfessionalStateFromJson(Map<String, dynamic> json) =>
    _ProfessionalState(
      professionals: (json['professionals'] as List<dynamic>?)
              ?.map((e) => Proffesional.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ProfessionalStateToJson(_ProfessionalState instance) =>
    <String, dynamic>{
      'professionals': instance.professionals,
      'isLoading': instance.isLoading,
      'error': instance.error,
    };
