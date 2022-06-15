import 'package:flutter/material.dart';
import 'package:solv/components_/progressbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solv/constants.dart' as Constant;

class ServicesPagePartFourSmall extends StatelessWidget {
  const ServicesPagePartFourSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(38, 38, 38, 1),
      padding: const EdgeInsets.fromLTRB(28, 100, 28, 100),
      child: Column(
        children: [
          FittedBox(
              child: Text(Constant.progressBarTittle,
                  style: GoogleFonts.cormorant(
                    color: Colors.white,
                    fontSize: 68,
                    fontWeight: FontWeight.w700,
                  ))),
          //SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: ProgressBar(
                    first: Constant.progressBar[0],
                    second: Constant.progressBar[1],
                    percent: 0.9),
              )),
              SizedBox(width: 100),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: ProgressBar(
                    first: Constant.progressBar[2],
                    second: Constant.progressBar[3],
                    percent: 0.75),
              )),
            ],
          ),
          //SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: ProgressBar(
                    first: Constant.progressBar[4],
                    second: Constant.progressBar[5],
                    percent: 0.88),
              )),
              SizedBox(width: 100),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: ProgressBar(
                    first: Constant.progressBar[6],
                    second: Constant.progressBar[7],
                    percent: 0.9),
              )),
            ],
          )
        ],
      ),
    );
  }
}
