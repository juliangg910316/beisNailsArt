import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/models/appointment/appointment.dart';

class AppointmentFormDialog extends StatefulWidget {
  const AppointmentFormDialog({
    super.key,
    this.appointment,
  });

  final Appointment? appointment;

  @override
  State<AppointmentFormDialog> createState() => _AppointmentFormDialogState();
}

class _AppointmentFormDialogState extends State<AppointmentFormDialog> {
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  final _serviceController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.appointment?.date ?? DateTime.now();
    _selectedTime = TimeOfDay.fromDateTime(
      widget.appointment?.date ?? DateTime.now(),
    );
    _serviceController.text = widget.appointment?.serviceId ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:
          Text(widget.appointment == null ? 'Crear Nueva Cita' : 'Editar Cita'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _serviceController,
              decoration: const InputDecoration(labelText: 'Servicio'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Por favor ingrese un servicio';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: _selectDate,
                    child: Text(
                      'Fecha: ${DateFormat('dd/MM/yyyy').format(_selectedDate)}',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: _selectTime,
                    child: Text('Hora: ${_selectedTime.format(context)}'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  Future<void> _selectTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null) {
      setState(() => _selectedTime = picked);
    }
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      final dateTime = DateTime(
        _selectedDate.year,
        _selectedDate.month,
        _selectedDate.day,
        _selectedTime.hour,
        _selectedTime.minute,
      );

      final appointment = Appointment(
        id: widget.appointment?.id ?? const Uuid().v4(),
        clientId: 'current_user_id', // Get from auth
        status: widget.appointment?.status ?? 'pending',
        createAt: DateTime.now(),
        noteAdicional: '',
        serviceId: _serviceController.text,
        date: dateTime,
        proffesionalId: '',
      );

      Navigator.pop(context, appointment);
    }
  }
}
