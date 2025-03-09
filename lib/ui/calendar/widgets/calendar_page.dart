import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/models/appointment/appointment.dart';
import '../../../utils/util.dart';
import '../../core/themes/colors.dart';
import '../providers/calendar_provider.dart';
import 'appointment_card.dart';

class CalendarPage extends ConsumerStatefulWidget {
  const CalendarPage({super.key});

  @override
  ConsumerState<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends ConsumerState<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
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
        data: (state) => Column(
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
            Expanded(
              child: _selectedDay == null
                  ? const Center(
                      child: Text('Selecciona un día para ver las citas'),
                    )
                  : ListView.builder(
                      itemCount: _getEventsForDay(_selectedDay!).length,
                      itemBuilder: (context, index) {
                        final appointment =
                            _getEventsForDay(_selectedDay!)[index];
                        return AppointmentCard(
                          appointment: appointment,
                          onTap: () =>
                              {}, //_showAppointmentDetails(appointment),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/add_appoinment'),
        backgroundColor: AppColors.main,
        child: const Icon(Icons.add),
      ),
    );
  }
}
