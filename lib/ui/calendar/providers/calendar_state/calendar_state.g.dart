// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CalendarState _$CalendarStateFromJson(Map<String, dynamic> json) =>
    _CalendarState(
      appointments: (json['appointments'] as List<dynamic>?)
              ?.map((e) => Appointment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$CalendarStateToJson(_CalendarState instance) =>
    <String, dynamic>{
      'appointments': instance.appointments,
      'isLoading': instance.isLoading,
      'error': instance.error,
    };
