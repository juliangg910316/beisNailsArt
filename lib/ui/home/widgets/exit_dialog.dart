import 'package:flutter/material.dart';

class ExitDialog extends StatelessWidget {
  const ExitDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Icon(
        Icons.exit_to_app,
        size: 40,
        color: Colors.blue,
      ),
      content: const Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
          '¿Quieres salir de la aplicación?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
      actionsPadding: const EdgeInsets.all(16.0),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
          ),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context, false),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Salir', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
