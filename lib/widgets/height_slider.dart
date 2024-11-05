import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final double heightVal;
  final ValueChanged<double> onHeightChanged;
  final bool isDarkTheme;

  const HeightSlider({
    super.key,
    required this.heightVal,
    required this.onHeightChanged,
    required this.isDarkTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        color: isDarkTheme ? const Color(0xff373737) : Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Text(
            "Height",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            heightVal.toStringAsFixed(0),
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: RotatedBox(
              quarterTurns: 3, // Rotates 90 degrees counterclockwise
              child: Slider(
                min: 90,
                max: 220,
                value: heightVal.toDouble(),
                onChanged: onHeightChanged,
                thumbColor: Theme.of(context).primaryColor,
                activeColor: Theme.of(context).primaryColor,
                inactiveColor: Colors.grey[350],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
