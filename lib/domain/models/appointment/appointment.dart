import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required int id,
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'create_at') required DateTime createAt,
    @JsonKey(name: 'proffesional_id') required String proffesionalId,
    @JsonKey(name: 'service_id') required String serviceId,
    required DateTime date,
    required String status,
    @JsonKey(name: 'note_adicional') required String? noteAdicional,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}
