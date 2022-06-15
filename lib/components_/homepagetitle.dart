import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageTittle extends StatelessWidget {
  const HomePageTittle({
    Key? key,
    required this.title,
    required this.align,
    required this.fontSize,
  }) : super(key: key);
  final String title;
  final TextAlign align;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: align,
        style: GoogleFonts.cormorant(
          color: Colors.white,
          fontSize: fontSize,
        ));
  }
}
