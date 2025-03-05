import 'package:flutter/material.dart';

import '../../../config/constants.dart';
import '../../core/themes/colors.dart';

class ServicesTabSection extends StatelessWidget {
  const ServicesTabSection({
    super.key,
    required this.onServiceSelected,
  });

  final Function(String) onServiceSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Servicios',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DefaultTabController(
          length: Constants.specialities.length,
          child: Column(
            children: [
              TabBar(
                labelColor: AppColors.main,
                unselectedLabelColor: Colors.grey,
                dividerColor: Colors.transparent,
                tabs: Constants.specialities
                    .map((speciality) => Tab(
                          text: speciality.name,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TabBarView(
                  children: [
                    _buildServiceTab([
                      'Manicure',
                      'Pedicure',
                      'Uñas Acrílicas',
                      'Gelish',
                      'Diseño',
                    ]),
                    _buildServiceTab([
                      'Extensiones',
                      'Lifting',
                      'Tinte',
                      'Permanente',
                    ]),
                    _buildServiceTab([
                      'Cejas',
                      'Labio Superior',
                      'Axilas',
                      'Piernas',
                      'Brazos',
                    ]),
                    _buildServiceTab([
                      'Cejas',
                      'Labio Superior',
                      'Axilas',
                      'Piernas',
                      'Brazos',
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServiceTab(List<String> services) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              children: [
                for (var service in services)
                  ActionChip(
                    label: Text(service),
                    onPressed: () => onServiceSelected(service),
                    side: BorderSide(color: Colors.grey.shade400),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text('Mañana',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              children: [
                for (var hour in [
                  '9:00',
                  '9:30',
                  '10:00',
                  '10:30',
                  '11:00',
                  '11:30'
                ])
                  ActionChip(
                    label: Text(hour),
                    onPressed: () => (),
                    // _showCreateAppointmentWithTime(hour),
                    side: BorderSide(color: Colors.grey.shade400),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text('Tarde',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              children: [
                for (var hour in [
                  '13:00',
                  '13:30',
                  '14:00',
                  '14:30',
                  '15:00',
                  '15:30',
                  '16:00',
                  '16:30',
                  '17:00',
                  '17:30',
                  '18:00'
                ])
                  ActionChip(
                    label: Text(hour),
                    onPressed: () => (),
                    // _showCreateAppointmentWithTime(hour),
                    side: BorderSide(color: Colors.grey.shade400),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
