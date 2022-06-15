import 'package:flutter/material.dart';
import 'package:solv/components_/homepageaboutimage.dart';
import 'package:solv/components_/homepageabouttext.dart';

class HomePagePartTwoSmall extends StatelessWidget {
  const HomePagePartTwoSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            HomePageAboutImage(),
            SizedBox(height: 30),
            HomePageAboutText()
          ],
        ),
      ),
    );
  }
}
