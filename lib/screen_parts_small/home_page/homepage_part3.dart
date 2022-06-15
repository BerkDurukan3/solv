import 'package:flutter/material.dart';
import 'package:solv/components_/homepageneedstext.dart';
import 'package:solv/components_/homepageneedstittle.dart';
import 'package:solv/constants.dart' as Constant;

class HomePagePartThreeSmall extends StatelessWidget {
  const HomePagePartThreeSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.grey.shade800.withOpacity(0.6),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  FittedBox(child: HomePageNeedsTittle()),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: HomePageNeedsText(
                        number: Constant.homePageNeedsText[0],
                        tittle: Constant.homePageNeedsText[1],
                        subtittle: Constant.homePageNeedsText[2]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: HomePageNeedsText(
                        number: Constant.homePageNeedsText[3],
                        tittle: Constant.homePageNeedsText[4],
                        subtittle: Constant.homePageNeedsText[5]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: HomePageNeedsText(
                        number: Constant.homePageNeedsText[6],
                        tittle: Constant.homePageNeedsText[7],
                        subtittle: Constant.homePageNeedsText[8]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: HomePageNeedsText(
                        number: Constant.homePageNeedsText[9],
                        tittle: Constant.homePageNeedsText[10],
                        subtittle: Constant.homePageNeedsText[11]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: HomePageNeedsText(
                        number: Constant.homePageNeedsText[12],
                        tittle: Constant.homePageNeedsText[13],
                        subtittle: Constant.homePageNeedsText[14]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: HomePageNeedsText(
                        number: Constant.homePageNeedsText[15],
                        tittle: Constant.homePageNeedsText[16],
                        subtittle: Constant.homePageNeedsText[17]),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
