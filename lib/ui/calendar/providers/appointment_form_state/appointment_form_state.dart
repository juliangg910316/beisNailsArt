import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_form_state.freezed.dart';
part 'appointment_form_state.g.dart';

@freezed
abstract class AppointmentFormState with _$AppointmentFormState {
  const factory AppointmentFormState({
    DateTime? selectedDate,
    String? selectedService,
    String? selectedProfessionalId,
    String? note,
    @Default(false) bool isLoading,
    String? error,
  }) = _AppointmentFormState;

  factory AppointmentFormState.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFormStateFromJson(json);
}
