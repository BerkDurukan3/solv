import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solv/constants.dart' as Constant;

class HomePageLink extends StatelessWidget {
  const HomePageLink({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final void Function() callback;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: callback,
            child: Text(Constant.homePageLink,
                style: GoogleFonts.montserrat(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline))));
  }
}
