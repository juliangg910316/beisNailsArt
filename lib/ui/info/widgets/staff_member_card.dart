import 'package:flutter/material.dart';
import '../../../domain/models/proffesionals/proffesionals.dart';
import '../../shared/widgets/rating_stars.dart';

class StaffMemberCard extends StatelessWidget {
  const StaffMemberCard({
    super.key,
    required this.staff,
  });

  final Proffesional staff;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: Image.asset(
              staff.photoUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  staff.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  staff.speciality.name,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                RatingStars(
                  rating: staff.rating,
                  size: 16,
                  color: Colors.amber,
                ),
                const SizedBox(height: 4),
                Text(
                  '(${staff.reviewCount} reviews)',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
