import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solv/constants.dart' as Constant;

class HomePageAboutText extends StatelessWidget {
  const HomePageAboutText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
            child: Text(
          'About Us',
          textAlign: TextAlign.center,
          style: GoogleFonts.cormorant(
            color: Colors.black,
            fontSize: 68,
            fontWeight: FontWeight.w700,
          ),
        )),
        Text(
          Constant.homePageAboutText,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              letterSpacing: 1,
              height: 2),
        ),
        FittedBox(
            child: Text(
          'See more',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            color: Colors.red,
            fontSize: 18,
            letterSpacing: 1,
            height: 2,
            decoration: TextDecoration.underline,
          ),
        ))
      ],
    );
  }
}
