import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String text;

  const MainTitle({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 40,
        color: Theme.of(context).primaryColorDark,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
