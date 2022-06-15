import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageNeedsText extends StatelessWidget {
  const HomePageNeedsText({
    Key? key,
    required this.number,
    required this.tittle,
    required this.subtittle,
  }) : super(key: key);
  final String number;
  final String tittle;
  final String subtittle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
            child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: number,
                style: GoogleFonts.cinzel(
                  color: Colors.white,
                  fontSize: 56,
                  fontWeight: FontWeight.w400,
                )),
            TextSpan(
                text: ".",
                style: GoogleFonts.montserrat(
                    color: Colors.red,
                    fontSize: 56,
                    fontWeight: FontWeight.w400))
          ]),
        )),
        FittedBox(
            child: Text(tittle,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ))),
        Text(subtittle,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                color: Colors.white.withOpacity(0.6),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.5))
      ],
    );
  }
}
