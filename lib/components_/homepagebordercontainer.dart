import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:solv/constants.dart' as Constant;

class HomePageBorderContainer extends StatelessWidget {
  const HomePageBorderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: Constant.homePageBorderContainerTittle,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              TextSpan(
                  text: Constant.homePageBorderContainerText,
                  style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 16,
                      height: 2))
            ]),
          ),
        ));
  }
}
