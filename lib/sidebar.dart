import 'package:flutter/material.dart';
import 'package:solv/components_/menu_tittle_texts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart' as Constants;

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function(String) onPressed;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withAlpha(200),
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            ListTile(
              hoverColor: Colors.red.withOpacity(0.8),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: MenuTitleTexts(name: "Home"),
              onTap: () => {onPressed("Home")},
            ),
            ListTile(
              hoverColor: Colors.red.withOpacity(0.8),
              leading: Icon(
                Icons.info_rounded,
                color: Colors.white,
              ),
              title: MenuTitleTexts(name: "About"),
              onTap: () => {onPressed("About")},
            ),
            ListTile(
              hoverColor: Colors.red.withOpacity(0.8),
              leading: Icon(
                Icons.room_service,
                color: Colors.white,
              ),
              title: MenuTitleTexts(name: "Service"),
              onTap: () => {onPressed("Services")},
            ),
            /**ListTile(
              hoverColor: Colors.red.withOpacity(0.8),
              leading: Icon(
                Icons.new_releases,
                color: Colors.white,
              ),
              title: MenuTitleTexts(name: "News"),
              onTap: () => {onPressed("News")},
            ),**/
            ListTile(
              hoverColor: Colors.red.withOpacity(0.8),
              leading: FaIcon(
                FontAwesomeIcons.infoCircle,
                color: Colors.white,
              ),
              title: MenuTitleTexts(name: "Contact"),
              onTap: () => {onPressed("Contact")},
            ),
            SizedBox(height: 100),
            ListTile(
              hoverColor: Colors.red.withOpacity(0.8),
              leading: Icon(
                Icons.phone,
                color: Colors.red,
              ),
              title: MenuTitleTexts(name: Constants.phone),
            ),
            ListTile(
              hoverColor: Colors.red.withOpacity(0.8),
              leading: Icon(
                Icons.email,
                color: Colors.red,
              ),
              title: FittedBox(child: MenuTitleTexts(name: Constants.email)),
            ),
          ],
        ),
      ),
    );
  }
}
