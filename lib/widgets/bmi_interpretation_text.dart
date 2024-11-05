import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/functions/get_bmi_interpretation.dart';

class BmiInterpretationText extends StatelessWidget {
  const BmiInterpretationText({
    super.key,
    required this.bmiScore,
  });

  final double bmiScore;

  @override
  Widget build(BuildContext context) {
    return Text(
      getBMIInterpretation(bmiScore),
      style: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    );
  }
}
