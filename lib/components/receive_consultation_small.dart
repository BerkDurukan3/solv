import 'package:flutter/material.dart';
import 'package:solv/components_/input_text.dart';
import 'package:solv/components_/send_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceiveConsultationSmall extends StatefulWidget {
  const ReceiveConsultationSmall({
    Key? key,
  }) : super(key: key);

  @override
  State<ReceiveConsultationSmall> createState() =>
      _ReceiveConsultationSmallState();
}

class _ReceiveConsultationSmallState extends State<ReceiveConsultationSmall> {
  final controllerName = TextEditingController();
  final controllerMessage = TextEditingController();
  final controllerNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.shade800.withOpacity(0.6),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(28, 100, 28, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                    child: Text(
                  'Receive consultation',
                  style: GoogleFonts.cormorant(
                    color: Colors.white,
                    fontSize: 41,
                    fontWeight: FontWeight.w700,
                  ),
                )),
                FittedBox(
                    child: Text(
                  'We will call you back within 15 minutes',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(174, 180, 182, 1),
                    fontSize: 16,
                  ),
                )),
                SizedBox(height: 40),
                TextInput(
                    inputFormatter: false,
                    inputColor: Colors.white,
                    labelName: "Your Name",
                    controller: controllerName,
                    color: Colors.white),
                SizedBox(width: 40),
                TextInput(
                    inputFormatter: true,
                    inputColor: Colors.white,
                    labelName: "Your Phone",
                    controller: controllerNumber,
                    color: Colors.white),
                Center(
                    child: SendButton(
                        controllerMessage: controllerMessage,
                        controllerName: controllerName,
                        controllerNumber: controllerNumber,
                        fontSize: 16)),
              ],
            )));
  }
}
