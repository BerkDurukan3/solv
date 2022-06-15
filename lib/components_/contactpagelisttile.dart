import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'contactpagelisttext.dart';
import 'package:solv/constants.dart' as Constant;

class ContactPageListTile extends StatelessWidget {
  const ContactPageListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () => MapsLauncher.launchQuery(Constant.address),
          leading: Icon(
            Icons.location_on_outlined,
            color: Colors.red,
            size: 60,
          ),
          title: ContactPageListTileText(tittle: Constant.address),
        ),
        SizedBox(height: 30),
        ListTile(
          leading: Icon(
            Icons.timelapse,
            color: Colors.red,
            size: 60,
          ),
          title: ContactPageListTileText(tittle: Constant.betweenTime),
        ),
        SizedBox(height: 30),
        ListTile(
          leading: Icon(
            Icons.phone,
            color: Colors.red,
            size: 60,
          ),
          title: ContactPageListTileText(tittle: Constant.phone),
        ),
        SizedBox(height: 30),
        ListTile(
          leading: Icon(
            Icons.mail,
            color: Colors.red,
            size: 60,
          ),
          title: ContactPageListTileText(tittle: Constant.email),
        ),
      ],
    );
  }
}
