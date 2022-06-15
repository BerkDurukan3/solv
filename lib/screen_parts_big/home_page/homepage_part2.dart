import 'package:flutter/material.dart';
import 'package:solv/components_/homepageaboutimage.dart';
import 'package:solv/components_/homepageabouttext.dart';

class HomePagePartTwoBig extends StatelessWidget {
  const HomePagePartTwoBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          children: [
            Expanded(child: HomePageAboutImage()),
            SizedBox(width: 30),
            Expanded(child: HomePageAboutText())
          ],
        ),
      ),
    );
  }
}
