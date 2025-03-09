// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentFormState _$AppointmentFormStateFromJson(
        Map<String, dynamic> json) =>
    _AppointmentFormState(
      selectedDate: json['selectedDate'] == null
          ? null
          : DateTime.parse(json['selectedDate'] as String),
      selectedService: json['selectedService'] as String?,
      selectedProfessionalId: json['selectedProfessionalId'] as String?,
      note: json['note'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$AppointmentFormStateToJson(
        _AppointmentFormState instance) =>
    <String, dynamic>{
      'selectedDate': instance.selectedDate?.toIso8601String(),
      'selectedService': instance.selectedService,
      'selectedProfessionalId': instance.selectedProfessionalId,
      'note': instance.note,
      'isLoading': instance.isLoading,
      'error': instance.error,
    };
