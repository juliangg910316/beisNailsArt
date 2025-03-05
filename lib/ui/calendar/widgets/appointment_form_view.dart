import 'package:beis_nails_art/ui/calendar/widgets/services_tab_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/models/appointment/appointment.dart';
import '../../core/themes/colors.dart';
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

  List<Appointment> _getEventsForDay(DateTime day) {
    final state = ref.watch(calendarProviderProvider).value;
    if (state == null) return [];

    return state.appointments.where((appointment) {
      return isSameDay(appointment.date, day);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final calendarState = ref.watch(calendarProviderProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Citas'),
        backgroundColor: AppColors.main,
      ),
      body: calendarState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (state) => SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                locale: 'es_ES',
                firstDay: DateTime.utc(2025, 3, 4),
                lastDay: DateTime.utc(2025, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ServicesTabSection(
                  onServiceSelected: _selectService,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreateAppointment,
        backgroundColor: AppColors.main,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showCreateAppointment() {
    showDialog(
      context: context,
      builder: (context) => const AppointmentFormView(),
    ).then((appointment) {
      if (appointment != null) {
        ref
            .read(calendarProviderProvider.notifier)
            .createAppointment(appointment);
      }
    });
  }

  void _selectService(String service) {
    if (_selectedDay == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor selecciona un día primero'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // showDialog(
    //   context: context,
    //   builder: (context) => AppointmentFormView(
    //     initialDate: _selectedDay,
    //     servicePreselected: service,
    //   ),
    // ).then((appointment) {
    //   if (appointment != null) {
    //     ref
    //         .read(calendarProviderProvider.notifier)
    //         .createAppointment(appointment);
    //   }
    // });
  }
}
