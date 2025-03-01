import 'package:flutter/material.dart';
import '../../../domain/models/appointment/appointment.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.appointment,
    this.onTap,
  });

  final Appointment appointment;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: ListTile(
        title: Text(appointment.serviceId),
        subtitle: Text(
          '${appointment.clientId}\n${_formatDateTime(appointment.date)}',
        ),
        trailing: _buildStatusChip(),
        onTap: onTap,
      ),
    );
  }

  Widget _buildStatusChip() {
    Color color;
    switch (appointment.status) {
      case 'confirmed':
        color = Colors.green;
        break;
      case 'cancelled':
        color = Colors.red;
        break;
      default:
        color = Colors.orange;
    }

    return Chip(
      label: Text(
        appointment.status,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
