import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/appointment/appointment_repository.dart';
import '../../../domain/models/appointment/appointment.dart';
import 'calendar_state/calendar_state.dart';

part 'calendar_provider.g.dart';

@riverpod
class CalendarProvider extends _$CalendarProvider {
  @override
  FutureOr<CalendarState> build() async {
    return _loadAppointments();
  }

  Future<CalendarState> _loadAppointments() async {
    state = const AsyncValue.loading();

    final result =
        await ref.read(appointmentRepositoryProvider).getAppointments();

    return result.fold(
      (failure) => CalendarState(error: failure.message),
      (appointments) => CalendarState(appointments: appointments),
    );
  }

  Future<void> createAppointment(Appointment appointment) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(appointmentRepositoryProvider)
        .createAppointment(appointment);

    result.fold(
      (failure) => state = AsyncError(failure.message, StackTrace.current),
      (newAppointment) {
        final currentAppointments = state.value?.appointments ?? [];
        state = AsyncData(CalendarState(
          appointments: [...currentAppointments, newAppointment],
        ));
      },
    );
  }

  Future<void> updateAppointment(Appointment appointment) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(appointmentRepositoryProvider)
        .updateAppointment(appointment);

    result.fold(
      (failure) => state = AsyncError(failure.message, StackTrace.current),
      (updatedAppointment) {
        final currentAppointments = state.value?.appointments ?? [];
        final updatedAppointments = currentAppointments.map((a) {
          return a.id == updatedAppointment.id ? updatedAppointment : a;
        }).toList();

        state = AsyncData(CalendarState(appointments: updatedAppointments));
      },
    );
  }

  Future<void> deleteAppointment(String id) async {
    state = const AsyncValue.loading();

    final result =
        await ref.read(appointmentRepositoryProvider).deleteAppointment(id);

    result.fold(
      (failure) => state = AsyncError(failure.message, StackTrace.current),
      (_) {
        final currentAppointments = state.value?.appointments ?? [];
        state = AsyncData(CalendarState(
          appointments: currentAppointments.where((a) => a.id != id).toList(),
        ));
      },
    );
  }
}
