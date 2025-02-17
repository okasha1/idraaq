import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextReuse extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;

  const TextReuse(
      {super.key, required this.text, required this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ebGaramond(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
