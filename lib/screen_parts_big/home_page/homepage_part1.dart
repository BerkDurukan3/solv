import 'package:flutter/material.dart';
import 'package:solv/components_/homepagelink.dart';
import 'package:solv/components_/homepagepercent.dart';
import 'package:solv/components_/homepagetitle.dart';
import 'package:solv/constants.dart' as Constant;

class HomePagePartOneBig extends StatelessWidget {
  const HomePagePartOneBig({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final void Function() callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HomePageTittle(
            title: Constant.homePageFirstTittle,
            align: TextAlign.center,
            fontSize: 84),
        SizedBox(height: 70),
        HomePageLink(
          callback: callback,
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Expanded(
                child: HomePagePercent(
                    percent: Constant.homePagePercentTexts[0],
                    substring: Constant.homePagePercentTexts[1])),
            Expanded(
                child: HomePagePercent(
                    percent: Constant.homePagePercentTexts[2],
                    substring: Constant.homePagePercentTexts[3])),
            Expanded(
                child: HomePagePercent(
                    percent: Constant.homePagePercentTexts[4],
                    substring: Constant.homePagePercentTexts[5])),
            Expanded(
                child: HomePagePercent(
                    percent: Constant.homePagePercentTexts[6],
                    substring: Constant.homePagePercentTexts[7])),
          ],
        ),
      ],
    );
  }
}
