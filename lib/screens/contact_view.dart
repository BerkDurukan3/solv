import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solv/components_/contactpagelisttile.dart';
import 'package:solv/components_/input_text.dart';
import 'package:solv/components_/pathtext.dart';
import 'package:solv/components_/send_button.dart';
import 'package:solv/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart' as Constant;

class ContactPage extends StatefulWidget {
  final ScrollController controller;

  const ContactPage({Key? key, required this.controller}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}

class _ContactPageState extends State<ContactPage> {
  final controllerName = TextEditingController();
  final controllerMessage = TextEditingController();
  final controllerNumber = TextEditingController();

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
                  path: "Contact",
                  flag: true,
                ),
              ),
              SizedBox(height: 80),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Row(
                    children: [
                      Expanded(child: ContactPageListTile()),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Receive consultation',
                            style: GoogleFonts.cormorant(
                              color: Colors.black,
                              fontSize: 68,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'We will call you back within 15 minutes',
                            style: GoogleFonts.montserrat(
                              color: Color.fromRGBO(38, 38, 38, 0.7),
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: TextInput(
                                      inputFormatter: false,
                                      inputColor: Colors.black,
                                      labelName: "Your Name",
                                      controller: controllerName,
                                      color: Color.fromRGBO(146, 146, 146, 1))),
                              SizedBox(width: 40),
                              Expanded(
                                  flex: 2,
                                  child: TextInput(
                                      inputFormatter: true,
                                      inputColor: Colors.black,
                                      labelName: "Phone*",
                                      controller: controllerNumber,
                                      color: Color.fromRGBO(146, 146, 146, 1))),
                              Expanded(
                                  flex: 1,
                                  child: SendButton(
                                      controllerMessage: controllerMessage,
                                      controllerName: controllerName,
                                      controllerNumber: controllerNumber,
                                      fontSize: 16))
                            ],
                          ),
                          TextInput(
                              inputFormatter: false,
                              inputColor: Colors.black,
                              labelName: "Message",
                              controller: controllerMessage,
                              color: Color.fromRGBO(146, 146, 146, 1)),
                        ],
                      )),
                    ],
                  ),
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
                  path: "Contact",
                  flag: false,
                ),
              ),
              //SizedBox(height: 80),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Column(
                    children: [
                      ContactPageListTile(),
                      //SizedBox(height: 80),
                      Padding(
                        padding: const EdgeInsets.only(top: 38),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                                child: Text(
                              'Receive consultation',
                              style: GoogleFonts.cormorant(
                                color: Colors.black,
                                fontSize: 68,
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            FittedBox(
                                child: Text(
                              'We will call you back within 15 minutes',
                              style: GoogleFonts.montserrat(
                                color: Color.fromRGBO(38, 38, 38, 0.7),
                                fontSize: 16,
                              ),
                            )),
                            Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: TextInput(
                                        inputFormatter: false,
                                        inputColor: Colors.black,
                                        labelName: "Your Name",
                                        controller: controllerName,
                                        color:
                                            Color.fromRGBO(146, 146, 146, 1))),
                                SizedBox(width: 40),
                                Expanded(
                                    flex: 2,
                                    child: TextInput(
                                        inputFormatter: true,
                                        inputColor: Colors.black,
                                        labelName: "Phone*",
                                        controller: controllerNumber,
                                        color:
                                            Color.fromRGBO(146, 146, 146, 1))),
                                Expanded(
                                    flex: 1,
                                    child: SendButton(
                                        controllerMessage: controllerMessage,
                                        controllerName: controllerName,
                                        controllerNumber: controllerNumber,
                                        fontSize: 12))
                              ],
                            ),
                            TextInput(
                                inputFormatter: false,
                                inputColor: Colors.black,
                                labelName: "Message",
                                controller: controllerMessage,
                                color: Color.fromRGBO(146, 146, 146, 1)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
