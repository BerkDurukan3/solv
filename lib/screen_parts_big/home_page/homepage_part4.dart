import 'package:flutter/material.dart';
import 'package:solv/components_/jobcard.dart';
import 'package:solv/components_/homepagehelptittle.dart';
import 'package:solv/constants.dart' as Constant;

class HomePagePartFourBig extends StatelessWidget {
  const HomePagePartFourBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(28, 100, 28, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: HomePageHelpTittle(
                      title: 'What can we help you with', fontSize: 68),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                        child: JobCard(
                            imagePath: Constant.jobCards[0],
                            tittle: Constant.jobCards[1],
                            text: Constant.jobCards[2])),
                    SizedBox(width: 20),
                    Expanded(
                        child: JobCard(
                            imagePath: Constant.jobCards[3],
                            tittle: Constant.jobCards[4],
                            text: Constant.jobCards[5])),
                    SizedBox(width: 20),
                    Expanded(
                        child: JobCard(
                            imagePath: Constant.jobCards[6],
                            tittle: Constant.jobCards[7],
                            text: Constant.jobCards[8])),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                        child: JobCard(
                            imagePath: Constant.jobCards[9],
                            tittle: Constant.jobCards[10],
                            text: Constant.jobCards[11])),
                    SizedBox(width: 20),
                    Expanded(
                        child: JobCard(
                            imagePath: Constant.jobCards[12],
                            tittle: Constant.jobCards[13],
                            text: Constant.jobCards[14])),
                    SizedBox(width: 20),
                    Expanded(
                        child: JobCard(
                            imagePath: Constant.jobCards[15],
                            tittle: Constant.jobCards[16],
                            text: Constant.jobCards[17])),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
