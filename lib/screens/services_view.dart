import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solv/components_/pathtext.dart';
import 'package:solv/components_/redpercenttext_big.dart';
import 'package:solv/components_/redpercenttext_small.dart';
import 'package:solv/responsive.dart';
import 'package:solv/screen_parts_big/home_page/homepage_part4.dart';
import 'package:solv/screen_parts_big/services_page/servicespage_part4.dart';
import 'package:solv/screen_parts_small/home_page/homepage_part4.dart';
import 'package:solv/screen_parts_small/services_page/servicespage_part4.dart';
import '../constants.dart' as Constant;

class ServicePage extends StatefulWidget {
  final ScrollController controller;

  const ServicePage({Key? key, required this.controller}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}

class _ServicePageState extends State<ServicePage> {
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
                  path: "Services",
                  flag: true,
                ),
              ),
              SizedBox(height: 80),
              HomePagePartFourBig(),
              RedPercentTextBig(),
              ServicesPagePartFourBig()
            ],
          ),
        ),
        smallScreen: Center(
          child: ListView(
            children: [
              Center(
                child: FittedBox(
                    child: PathText(
                  path: "Services",
                  flag: false,
                )),
              ),
              //SizedBox(height: 80),
              HomePagePartFourSmall(),
              RedPercentTextSmall(),
              ServicesPagePartFourSmall()
            ],
          ),
        ),
      ),
    );
  }
}
