import 'package:flutter/material.dart';
import 'package:solv/components/receive_consultation_big.dart';
import 'package:solv/components/receive_consultation_small.dart';
import 'package:solv/components_/pathtext.dart';
import 'package:solv/responsive.dart';
import 'package:solv/screen_parts_big/about_page/aboutpage_part2.dart';
import 'package:solv/screen_parts_big/home_page/homepage_part3.dart';
import 'package:solv/screen_parts_small/about_page/aboutpage_part2.dart';
import 'package:solv/screen_parts_small/home_page/homepage_part3.dart';
import '../constants.dart' as Constant;
import 'package:flutter/foundation.dart';

class AboutPage extends StatefulWidget {
  final ScrollController controller;

  const AboutPage({Key? key, required this.controller}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage(path("images/" + Constant.bgPath)),
            fit: BoxFit.cover),
      ),
      child: ResponsiveWidget(
        largeScreen: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: ListView(
            controller: widget.controller,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: PathText(
                  path: "About Us",
                  flag: true,
                ),
              ),
              SizedBox(height: 80),
              AboutPagePartTwoBig(),
              HomePagePartThreeBig(),
              ReceiveConsultationBig()
            ],
          ),
        ),
        smallScreen: Center(
          child: ListView(
            children: [
              Center(
                  child: FittedBox(
                child: PathText(
                  path: "About Us",
                  flag: false,
                ),
              )),
              //SizedBox(height: 80),
              AboutPagePartTwoSmall(),
              HomePagePartThreeSmall(),
              ReceiveConsultationSmall()
            ],
          ),
        ),
      ),
    );
  }
}
