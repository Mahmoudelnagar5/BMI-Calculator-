import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'custom_button_action.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.bmiScore,
  });

  final double bmiScore;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomActionButton(
          icon: Icons.replay_outlined,
          label: "Retry",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(width: 20),
        CustomActionButton(
          icon: Icons.share,
          label: "Share",
          onPressed: () {
            Share.share(
              "Your BMI is ${bmiScore.toStringAsFixed(1)}",
            );
          },
        ),
      ],
    );
  }
}
