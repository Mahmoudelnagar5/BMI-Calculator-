import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    this.onPressed,
    this.icon,
    this.label,
  });
  final void Function()? onPressed;
  final IconData? icon;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 150,
        maxWidth: 150,
        minHeight: 50,
        maxHeight: 50,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color(0xff246AFE).withOpacity(.9),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: TextButton.icon(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          label: Text(
            "$label",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
