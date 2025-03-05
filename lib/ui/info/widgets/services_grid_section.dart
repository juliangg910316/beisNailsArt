import 'package:flutter/material.dart';

import '../../../config/constants.dart';
import 'specialty_card.dart';

class ServicesGridSection extends StatelessWidget {
  const ServicesGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.8,
        crossAxisSpacing: 8,
        mainAxisSpacing: 16,
      ),
      itemCount: Constants.specialities.length,
      itemBuilder: (context, index) {
        final specialities = Constants.specialities[index];
        return SpecialtyCard(
          color: Constants.specialitiesColors[index],
          specialties: specialities,
        );
      },
    );
  }
}
