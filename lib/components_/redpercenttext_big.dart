import 'package:flutter/material.dart';
import 'package:solv/components_/servicespercent_text.dart';
import 'package:solv/constants.dart' as Constant;

class RedPercentTextBig extends StatelessWidget {
  const RedPercentTextBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ServicesPercentText(
                  first: Constant.homePagePercentTexts[0],
                  second: Constant.homePagePercentTexts[1]),
              SizedBox(width: 60),
              ServicesPercentText(
                  first: Constant.homePagePercentTexts[2],
                  second: Constant.homePagePercentTexts[3]),
              SizedBox(width: 60),
              ServicesPercentText(
                  first: Constant.homePagePercentTexts[4],
                  second: Constant.homePagePercentTexts[5]),
              SizedBox(width: 60),
              ServicesPercentText(
                  first: Constant.homePagePercentTexts[6],
                  second: Constant.homePagePercentTexts[7])
            ],
          ),
        ));
  }
}
