import 'package:flutter/material.dart';
import 'package:solv/components_/homepageaboutimage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solv/constants.dart' as Constant;

class AboutPagePartTwoSmall extends StatelessWidget {
  const AboutPagePartTwoSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            HomePageAboutImage(),
            Padding(
              padding: const EdgeInsets.only(top: 28, bottom: 28),
              child: Text(
                Constant.aboutPageTextFull,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 16,
                    letterSpacing: 1,
                    height: 2),
              ),
            ),
            HomePageAboutImage(),
          ],
        ),
      ),
    );
  }
}
