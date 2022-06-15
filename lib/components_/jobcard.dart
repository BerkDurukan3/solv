import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.imagePath,
    required this.tittle,
    required this.text,
  }) : super(key: key);
  final String imagePath;
  final String tittle;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
        color: Color.fromRGBO(38, 38, 38, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 4 / 4,
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage(path("images/" + imagePath)),
                        fit: BoxFit.cover),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    FittedBox(
                        child: Text(tittle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ))),
                    Text(text,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 14,
                            height: 1.5))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}
