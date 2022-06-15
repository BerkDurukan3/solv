import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.first,
    required this.second,
    required this.percent,
  }) : super(key: key);
  final String first;
  final String second;
  final double percent;
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 120.0,
      lineWidth: 13.0,
      animation: true,
      percent: percent,
      center: new FittedBox(
          child: Text(
        second,
        style: GoogleFonts.montserrat(
          color: Colors.white.withOpacity(0.6),
          fontSize: 16,
        ),
      )),
      footer: new FittedBox(
          child: Text(
        first,
        style: GoogleFonts.montserrat(
          color: Colors.white.withOpacity(0.6),
          fontSize: 16,
        ),
      )),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Colors.red,
    );
  }
}
