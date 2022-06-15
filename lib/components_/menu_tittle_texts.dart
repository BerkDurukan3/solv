import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuTitleTexts extends StatelessWidget {
  const MenuTitleTexts({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      name,
      maxLines: 1,
      style: GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}
