import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarRightLabel extends StatelessWidget {
  const TopBarRightLabel({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  final Icon icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            name,
            maxLines: 1,
            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 13),
          ),
        ),
      ],
    );
  }
}
