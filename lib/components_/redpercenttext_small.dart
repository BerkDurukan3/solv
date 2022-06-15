import 'package:flutter/material.dart';
import 'package:solv/components_/servicespercent_text.dart';
import 'package:solv/constants.dart' as Constant;

class RedPercentTextSmall extends StatelessWidget {
  const RedPercentTextSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            FittedBox(
                child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ServicesPercentText(
                  first: Constant.homePagePercentTexts[0],
                  second: Constant.homePagePercentTexts[1]),
            )),
            FittedBox(
                child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ServicesPercentText(
                  first: Constant.homePagePercentTexts[2],
                  second: Constant.homePagePercentTexts[3]),
            )),
            FittedBox(
                child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ServicesPercentText(
                  first: Constant.homePagePercentTexts[4],
                  second: Constant.homePagePercentTexts[5]),
            )),
            FittedBox(
                child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ServicesPercentText(
                  first: Constant.homePagePercentTexts[6],
                  second: Constant.homePagePercentTexts[7]),
            ))
          ],
        ));
  }
}
