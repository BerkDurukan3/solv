import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePagePercent extends StatelessWidget {
  const HomePagePercent({
    Key? key,
    required this.percent,
    required this.substring,
  }) : super(key: key);
  final String percent;
  final String substring;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          Text(
            percent,
            style: GoogleFonts.cinzel(
              color: Colors.white,
              fontSize: 46,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            substring,
            style: GoogleFonts.montserrat(
              color: Colors.white.withOpacity(0.5),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
