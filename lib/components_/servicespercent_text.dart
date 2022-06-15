import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPercentText extends StatelessWidget {
  const ServicesPercentText({
    Key? key,
    required this.first,
    required this.second,
  }) : super(key: key);
  final String first;
  final String second;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(first,
            style: GoogleFonts.cinzel(
              color: Colors.red,
              fontSize: 80,
              fontWeight: FontWeight.w400,
            )),
        Text(second,
            style: GoogleFonts.montserrat(
              color: Color.fromRGBO(101, 101, 101, 1),
              fontSize: 24,
            ))
      ],
    );
  }
}
