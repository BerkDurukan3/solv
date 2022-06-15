import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPageListTileText extends StatelessWidget {
  const ContactPageListTileText({
    Key? key,
    required this.tittle,
  }) : super(key: key);
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Text(tittle,
        style: GoogleFonts.montserrat(
          color: Color.fromRGBO(38, 38, 38, 1),
          fontSize: 22,
        ));
  }
}
