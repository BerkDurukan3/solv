import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PathText extends StatelessWidget {
  const PathText({
    Key? key,
    required this.path,
    required this.flag,
  }) : super(key: key);
  final String path;
  final bool flag;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: flag,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Home   /   ",
                    style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                    )),
                TextSpan(
                    text: path,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16,
                    ))
              ]),
            )),
        SizedBox(height: 30),
        Text(path,
            style: GoogleFonts.cormorant(
              color: Colors.white,
              fontSize: 83,
              fontWeight: FontWeight.w700,
            ))
      ],
    );
  }
}
