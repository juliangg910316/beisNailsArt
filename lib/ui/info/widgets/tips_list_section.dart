import 'package:flutter/material.dart';
import '../../../config/constants.dart';
import 'tip_card.dart';

class TipsListSection extends StatelessWidget {
  const TipsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Constants.beautyTips.length,
          itemBuilder: (context, index) {
            final tip = Constants.beautyTips[index];
            return TipCard(tip: tip);
          },
        ),
      ),
    );
  }
}
