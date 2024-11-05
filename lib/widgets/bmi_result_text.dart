import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/functions/bmi_status_color.dart';
import '../utils/functions/get_bmi_result.dart';

class BmiResultText extends StatelessWidget {
  const BmiResultText({
    super.key,
    required this.bmiScore,
  });

  final double bmiScore;

  @override
  Widget build(BuildContext context) {
    return Text(
      getBMIResult(bmiScore),
      style: GoogleFonts.poppins(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        color: bmiStatusColor(bmiScore),
      ),
      textAlign: TextAlign.center,
    );
  }
}
