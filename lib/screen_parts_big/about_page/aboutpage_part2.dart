import 'package:flutter/material.dart';
import 'package:solv/components_/homepageaboutimage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solv/constants.dart' as Constant;

class AboutPagePartTwoBig extends StatelessWidget {
  const AboutPagePartTwoBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: HomePageAboutImage()),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: Constant.aboutPageTittle + "\n",
                        style: GoogleFonts.cormorant(
                          color: Colors.black,
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: Constant.aboutPageTextPart1,
                        style: GoogleFonts.montserrat(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 16,
                            letterSpacing: 1,
                            height: 2),
                      )
                    ]),
                  ),
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: Constant.aboutPageTextPart2,
                        style: GoogleFonts.montserrat(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 16,
                            letterSpacing: 1,
                            height: 2),
                      )
                    ]),
                  ),
                )),
                Expanded(child: HomePageAboutImage()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
