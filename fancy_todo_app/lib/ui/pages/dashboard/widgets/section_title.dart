import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String text;

  const SectionTitle({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
        color: Colors.grey.shade500,
        fontSize: 16,
        letterSpacing: 0.6,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
