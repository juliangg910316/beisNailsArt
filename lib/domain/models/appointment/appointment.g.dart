// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: (json['id'] as num).toInt(),
      clientId: json['client_id'] as String,
      createAt: DateTime.parse(json['create_at'] as String),
      proffesionalId: json['proffesional_id'] as String,
      serviceId: json['service_id'] as String,
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String,
      noteAdicional: json['note_adicional'] as String?,
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_id': instance.clientId,
      'create_at': instance.createAt.toIso8601String(),
      'proffesional_id': instance.proffesionalId,
      'service_id': instance.serviceId,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      'note_adicional': instance.noteAdicional,
    };
