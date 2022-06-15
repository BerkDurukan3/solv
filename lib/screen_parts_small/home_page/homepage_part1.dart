import 'package:flutter/material.dart';
import 'package:solv/components_/homepagelink.dart';
import 'package:solv/components_/homepagepercent.dart';
import 'package:solv/components_/homepagetitle.dart';
import 'package:solv/constants.dart' as Constant;

class HomePagePartOneSmall extends StatelessWidget {
  const HomePagePartOneSmall({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final void Function() callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: FittedBox(
              child: HomePageTittle(
                  title: Constant.homePageFirstTittle,
                  align: TextAlign.center,
                  fontSize: 66)),
        ),
        //SizedBox(height: 70),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: FittedBox(
              child: HomePageLink(
            callback: callback,
          )),
        )),
        //SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
              children: [
                FittedBox(
                    child: HomePagePercent(
                        percent: Constant.homePagePercentTexts[0],
                        substring: Constant.homePagePercentTexts[1])),
                FittedBox(
                    child: HomePagePercent(
                        percent: Constant.homePagePercentTexts[2],
                        substring: Constant.homePagePercentTexts[3]))
              ],
            )),
            Expanded(
                child: Column(
              children: [
                FittedBox(
                    child: HomePagePercent(
                        percent: Constant.homePagePercentTexts[4],
                        substring: Constant.homePagePercentTexts[5])),
                FittedBox(
                    child: HomePagePercent(
                        percent: Constant.homePagePercentTexts[6],
                        substring: Constant.homePagePercentTexts[7])),
              ],
            )),
          ],
        )
      ],
    );
  }
}
