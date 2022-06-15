import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../onHover.dart';

class TopBarButton extends StatelessWidget {
  const TopBarButton({
    Key? key,
    required this.name,
    required this.onPressed,
    required this.id,
  }) : super(key: key);

  final String name;
  final Function(String) onPressed;
  final String id;

  @override
  Widget build(BuildContext context) {
    bool hoverFlag = false;
    if (name == id) {
      hoverFlag = true;
    }

    return OnHover(
        hoverFlag: hoverFlag,
        builder: (isHovered) {
          final color = isHovered ? Colors.red : Colors.black.withOpacity(0);
          var screenSize = MediaQuery.of(context).size;
          return GestureDetector(
              onTap: () {
                onPressed(this.name);
              },
              child: Container(
                color: color,
                width: screenSize.width / 15,
                height: 500,
                alignment: Alignment.center,
                child: Text(
                  name,
                  maxLines: 1,
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 18),
                ),
              ));
        });
  }
}
