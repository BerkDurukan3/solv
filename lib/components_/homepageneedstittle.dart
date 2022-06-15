import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solv/constants.dart' as Constant;

class HomePageNeedsTittle extends StatelessWidget {
  const HomePageNeedsTittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Constant.homePageNeedsTittle,
      style: GoogleFonts.cormorant(
        color: Colors.white,
        fontSize: 68,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
