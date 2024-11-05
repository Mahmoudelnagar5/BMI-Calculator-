import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/action_butttons.dart';
import '../widgets/bmi_interpretation_text.dart';
import '../widgets/bmi_result_text.dart';
import '../widgets/radial__gauge.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.bmiScore});
  final double bmiScore;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          const SizedBox(height: 60),
          Center(
            child: Text(
              "Your BMI Score",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(height: 20),
          RadialGauge(bmiScore: bmiScore),
          const SizedBox(height: 20),
          BmiResultText(bmiScore: bmiScore),
          const SizedBox(height: 20),
          BmiInterpretationText(bmiScore: bmiScore),
          const SizedBox(height: 30),
          ActionButtons(bmiScore: bmiScore)
        ],
      ),
    );
  }
}
