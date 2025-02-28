import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    required this.rating,
    this.size = 16,
    this.color = Colors.amber,
  });

  final double rating;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          5,
          (index) => Icon(
            index < rating
                ? ((rating - index > 0) && (rating - index < 1))
                    ? Icons.star_half
                    : Icons.star
                : Icons.star_border,
            color: color,
            size: size,
          ),
        ),
      ],
    );
  }
}
