import 'package:flutter/material.dart';
import 'package:solv/components_/homepagebordercontainer.dart';
import 'package:solv/components_/homepageneedstext.dart';
import 'package:solv/components_/homepageneedstittle.dart';
import 'package:solv/constants.dart' as Constant;

class HomePagePartThreeBig extends StatelessWidget {
  const HomePagePartThreeBig({
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
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomePageNeedsTittle(),
                      SizedBox(height: 50),
                      Row(
                        children: [
                          Expanded(
                              child: HomePageNeedsText(
                                  number: Constant.homePageNeedsText[0],
                                  tittle: Constant.homePageNeedsText[1],
                                  subtittle: Constant.homePageNeedsText[2])),
                          SizedBox(width: 50),
                          Expanded(
                              child: HomePageNeedsText(
                                  number: Constant.homePageNeedsText[3],
                                  tittle: Constant.homePageNeedsText[4],
                                  subtittle: Constant.homePageNeedsText[5])),
                        ],
                      ),
                      SizedBox(height: 100),
                      Row(
                        children: [
                          Expanded(
                              child: HomePageNeedsText(
                                  number: Constant.homePageNeedsText[6],
                                  tittle: Constant.homePageNeedsText[7],
                                  subtittle: Constant.homePageNeedsText[8])),
                          SizedBox(width: 50),
                          Expanded(
                              child: HomePageNeedsText(
                                  number: Constant.homePageNeedsText[9],
                                  tittle: Constant.homePageNeedsText[10],
                                  subtittle: Constant.homePageNeedsText[11])),
                        ],
                      ),
                    ],
                  )),
                  SizedBox(width: 50),
                  Expanded(
                      child: Column(
                    children: [
                      HomePageBorderContainer(),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: HomePageNeedsText(
                                    number: Constant.homePageNeedsText[12],
                                    tittle: Constant.homePageNeedsText[13],
                                    subtittle: Constant.homePageNeedsText[14])),
                            SizedBox(width: 50),
                            Expanded(
                                child: HomePageNeedsText(
                                    number: Constant.homePageNeedsText[15],
                                    tittle: Constant.homePageNeedsText[16],
                                    subtittle: Constant.homePageNeedsText[17])),
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            )),
      ],
    );
  }
}
