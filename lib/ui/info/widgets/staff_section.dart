import 'package:flutter/material.dart';
import '../../../config/constants.dart';
import 'staff_member_card.dart';

class StaffSection extends StatelessWidget {
  const StaffSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Nuestros Equipo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 280, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Constants.proffesionals.length,
            itemBuilder: (context, index) {
              final staff = Constants.proffesionals[index];
              return Container(
                width: 200, // Adjust width as needed
                margin: const EdgeInsets.only(right: 16),
                child: StaffMemberCard(staff: staff),
              );
            },
          ),
        ),
      ],
    );
  }
}
