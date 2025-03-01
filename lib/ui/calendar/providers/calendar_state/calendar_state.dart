import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/appointment/appointment.dart';

part 'calendar_state.freezed.dart';
part 'calendar_state.g.dart';

@freezed
abstract class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default([]) List<Appointment> appointments,
    @Default(false) bool isLoading,
    String? error,
  }) = _CalendarState;

  factory CalendarState.fromJson(Map<String, dynamic> json) =>
      _$CalendarStateFromJson(json);
}
