import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWidget extends StatelessWidget {
  final Function()? ontap;
  final String text;
  final Color? color;
  const TextButtonWidget({
    super.key,
    this.ontap,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
