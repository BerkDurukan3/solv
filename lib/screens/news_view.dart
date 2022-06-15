import 'package:flutter/material.dart';
import 'package:solv/components_/pathtext.dart';
import 'package:solv/responsive.dart';
import '../constants.dart' as Constant;

class NewsPage extends StatefulWidget {
  final ScrollController controller;

  const NewsPage({Key? key, required this.controller}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage("images/" + Constant.bgPath),
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
                  path: "News",
                  flag: true,
                ),
              ),
            ],
          ),
        ),
        smallScreen: Center(
          child: ListView(
            children: [
              Center(
                child: PathText(
                  path: "News",
                  flag: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
