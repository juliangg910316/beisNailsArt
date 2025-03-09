import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../data/repositories/appointment/appointment_repository.dart';
import '../../../domain/models/appointment/appointment.dart';
import '../../auth/login/providers/auth_prov.dart';
import 'appointment_form_state/appointment_form_state.dart';
import 'calendar_provider.dart';

part 'appointment_form_provider.g.dart';

@riverpod
class AppointmentFormProvider extends _$AppointmentFormProvider {
  @override
  AppointmentFormState build() {
    return const AppointmentFormState();
  }

  void updateSelectedDate(DateTime date) {
    state = state.copyWith(selectedDate: date);
  }

  void updateSelectedService(String service) {
    state = state.copyWith(selectedService: service);
  }

  void updateSelectedProfessional(String professionalId) {
    state = state.copyWith(selectedProfessionalId: professionalId);
  }

  void updateNote(String note) {
    state = state.copyWith(note: note);
  }

  Future<bool> createAppointment() async {
    if (state.selectedDate == null ||
        state.selectedService == null ||
        state.selectedProfessionalId == null) {
      state = state.copyWith(
          error: 'Por favor complete todos los campos requeridos');
      return false;
    }

    state = state.copyWith(isLoading: true, error: null);

    final appointment = Appointment(
      id: const Uuid().v4(),
      date: state.selectedDate!,
      serviceId: state.selectedService!,
      proffesionalId: state.selectedProfessionalId!,
      clientId: ref.read(authProvProvider).value?.authResponse?.user?.id ?? '',
      createAt: DateTime.now(),
      status: 'pending',
      noteAdicional: state.note,
    );

    final result = await ref
        .read(appointmentRepositoryProvider)
        .createAppointment(appointment);

    return result.fold(
      (failure) {
        state = state.copyWith(error: failure.message, isLoading: false);
        return false;
      },
      (success) {
        // Refresh calendar appointments
        ref.invalidate(calendarProviderProvider);
        state = const AppointmentFormState();
        return true;
      },
    );
  }
}
