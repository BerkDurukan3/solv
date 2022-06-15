import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solv/constants.dart' as Constant;

class HomePageAboutImage extends StatelessWidget {
  const HomePageAboutImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 4 / 4,
        child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage(
                    path("images/" + Constant.homePageAboutImagePath)),
                fit: BoxFit.cover),
          ),
        ));
  }
}

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}
