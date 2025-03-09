import 'package:beis_nails_art/ui/calendar/widgets/services_tab_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/models/appointment/appointment.dart';
import '../../../utils/util.dart';
import '../../core/themes/colors.dart';
import '../providers/appointment_form_provider.dart';
import '../providers/calendar_provider.dart';

class AppointmentFormView extends ConsumerStatefulWidget {
  const AppointmentFormView({
    super.key,
  });

  @override
  ConsumerState<AppointmentFormView> createState() =>
      _AppointmentFormViewState();
}

class _AppointmentFormViewState extends ConsumerState<AppointmentFormView> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // @override
  // void initState() {
  //   super.initState();
  //   _selectedDay = widget.selectedDay;
  // }

  List<Appointment> _getEventsForDay(DateTime day) {
    final state = ref.watch(calendarProviderProvider).value;
    if (state == null) return [];

    return state.appointments.where((appointment) {
      return isSameDay(appointment.date, day);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(appointmentFormProviderProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar cita'),
        backgroundColor: AppColors.main,
      ),
      body: Column(
        children: [
          TableCalendar(
            locale: 'es_ES',
            firstDay: DateTime.now(),
            lastDay: getTwoMonthsFromNow(),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: onDaySelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            eventLoader: _getEventsForDay,
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: AppColors.main.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              selectedDecoration: const BoxDecoration(
                color: AppColors.main,
                shape: BoxShape.circle,
              ),
              markerDecoration: const BoxDecoration(
                color: AppColors.main,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              formatButtonShowsNext: false,
            ),
            availableCalendarFormats: const {
              CalendarFormat.month: 'Mes',
              CalendarFormat.twoWeeks: '2 semanas',
              CalendarFormat.week: 'Semana',
            },
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: Colors.black87),
              weekendStyle: TextStyle(color: Colors.black87),
            ),
          ),
          const SizedBox(height: 16),
          if (formState.error != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                formState.error!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ServicesTabSection(
              onServiceSelected: (service) {
                ref
                    .read(appointmentFormProviderProvider.notifier)
                    .updateSelectedService(service);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Nota adicional',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              onChanged: (value) {
                ref
                    .read(appointmentFormProviderProvider.notifier)
                    .updateNote(value);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: formState.isLoading
            ? null
            : () async {
                if (await ref
                    .read(appointmentFormProviderProvider.notifier)
                    .createAppointment()) {
                  context.pop(); // Go back to calendar page
                }
              },
        backgroundColor: formState.isLoading ? Colors.grey : AppColors.main,
        label: Text(formState.isLoading ? 'Guardando...' : 'Confirmar'),
        icon: formState.isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(color: Colors.white),
              )
            : const Icon(Icons.check),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Initialize the selected date in the provider
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(appointmentFormProviderProvider.notifier)
          .updateSelectedDate(_focusedDay);
    });
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
      ref
          .read(appointmentFormProviderProvider.notifier)
          .updateSelectedDate(selectedDay);
    }
  }
}
