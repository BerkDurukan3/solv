import 'package:flutter/material.dart';
import 'package:solv/components/receive_consultation_big.dart';
import 'package:solv/components/receive_consultation_small.dart';
import 'package:solv/screen_parts_big/home_page/homepage_part1.dart';
import 'package:solv/screen_parts_big/home_page/homepage_part2.dart';
import 'package:solv/screen_parts_big/home_page/homepage_part3.dart';
import 'package:solv/screen_parts_big/home_page/homepage_part4.dart';
import 'package:solv/screen_parts_small/home_page/homepage_part1.dart';
import 'package:solv/screen_parts_small/home_page/homepage_part2.dart';
import 'package:solv/screen_parts_small/home_page/homepage_part3.dart';
import 'package:solv/screen_parts_small/home_page/homepage_part4.dart';
import '../responsive.dart';
import '../constants.dart' as Constant;
import 'package:flutter/foundation.dart';

class HomePage extends StatefulWidget {
  final ScrollController controller;
  final void Function() callback;
  const HomePage({Key? key, required this.controller, required this.callback})
      : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}

class _HomePageState extends State<HomePage> {
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
              HomePagePartOneBig(callback: widget.callback),
              SizedBox(height: 80),
              HomePagePartTwoBig(),
              HomePagePartThreeBig(),
              HomePagePartFourBig(),
              ReceiveConsultationBig(),
            ],
          ),
        ),
        smallScreen: Center(
          child: ListView(
            controller: widget.controller,
            children: [
              HomePagePartOneSmall(
                callback: widget.callback,
              ),
              //SizedBox(height: 80),
              HomePagePartTwoSmall(),
              HomePagePartThreeSmall(),
              HomePagePartFourSmall(),
              ReceiveConsultationSmall(),
            ],
          ),
        ),
      ),
    );
  }
}
