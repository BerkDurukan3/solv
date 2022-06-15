import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageHelpTittle extends StatelessWidget {
  const HomePageHelpTittle({
    Key? key,
    required this.title,
    required this.fontSize,
  }) : super(key: key);
  final String title;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.cormorant(
          color: Colors.black,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
        ));
  }
}
