import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:solv/responsive.dart';
import 'package:solv/screens/about_view.dart';
import 'package:solv/screens/contact_view.dart';
import 'package:solv/screens/home_view.dart';
import 'package:solv/screens/news_view.dart';
import 'package:solv/screens/services_view.dart';
import 'package:solv/sidebar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components_/topbarbuttons_hover.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart' as Constants;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool upDirection = true, flag = true;
  late ScrollController _controller;
  String _id = "Home";

  @override
  void initState() {
    super.initState();

    _controller = ScrollController()
      ..addListener(() {
        upDirection =
            _controller.position.userScrollDirection == ScrollDirection.forward;

        if (upDirection != flag) {
          setState(() {});
        }

        flag = upDirection;
      });
  }

  void _launchSocial(String url, String fallbackUrl) async {
    try {
      bool launched =
          await launch(url, forceSafariVC: false, forceWebView: false);
      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
    }
  }

  void goUp() {
    _controller.animateTo(
      _controller.position.maxScrollExtent * 2,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 1000),
    );
  }

  buttonFunction(id) {
    if (id != _id) {
      setState(() {
        _id = id;
      });
    }

    if (id == "Home") {
      return HomePage(controller: _controller, callback: goUp);
    } else if (id == "About") {
      return AboutPage(controller: _controller);
    } else if (id == "Services") {
      return ServicePage(controller: _controller);
    } else if (id == "News") {
      return NewsPage(controller: _controller);
    } else if (id == "Contact") {
      return ContactPage(controller: _controller);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.tittle,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: SideDrawer(onPressed: buttonFunction),
        appBar: PreferredSize(
            preferredSize: flag ? Size.fromHeight(50) : Size.fromHeight(50),
            child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: flag ? 50 : 0,
                child: AppBar(
                  backgroundColor: Colors.black.withAlpha(155),
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: true,
                  title: ResponsiveWidget(
                    largeScreen: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TopBarButton(
                            name: "Home", onPressed: buttonFunction, id: _id),
                        TopBarButton(
                            name: "About", onPressed: buttonFunction, id: _id),
                        TopBarButton(
                            name: "Services",
                            onPressed: buttonFunction,
                            id: _id),
                        //TopBarButton(name: "News", onPressed: buttonFunction),
                        TopBarButton(
                            name: "Contact", onPressed: buttonFunction, id: _id)
                      ],
                    ),
                    smallScreen: Container(),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {
                          _launchSocial(Constants.linkedinUrl, "");
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          _launchSocial(Constants.twitterUrl, "");
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          _launchSocial(Constants.facebookUrl, "");
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        )),
                  ],
                ))),
        body: buttonFunction(_id),
      ),
    );
  }
}
