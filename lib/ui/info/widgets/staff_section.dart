import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../calendar/providers/professional_provider.dart';
import 'staff_member_card.dart';

class StaffSection extends ConsumerWidget {
  const StaffSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final professionalsAsync = ref.watch(professionalProviderProvider);
    final logger = Logger('StaffSection');

    return professionalsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Nuestro Staff',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: state.professionals.length,
              itemBuilder: (context, index) {
                final professional = state.professionals[index];
                logger.info('Professional: $professional');
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: StaffMemberCard(professional: professional),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
