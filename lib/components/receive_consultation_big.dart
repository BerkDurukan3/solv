import 'package:flutter/material.dart';
import 'package:solv/components_/input_text.dart';
import 'package:solv/components_/send_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceiveConsultationBig extends StatefulWidget {
  const ReceiveConsultationBig({
    Key? key,
  }) : super(key: key);

  @override
  State<ReceiveConsultationBig> createState() => _ReceiveConsultationBigState();
}

class _ReceiveConsultationBigState extends State<ReceiveConsultationBig> {
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
            Text(
              'Receive consultation',
              style: GoogleFonts.cormorant(
                color: Colors.white,
                fontSize: 68,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'We will call you back within 15 minutes',
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(174, 180, 182, 1),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: TextInput(
                        inputFormatter: false,
                        inputColor: Colors.white,
                        labelName: "Your Name",
                        controller: controllerName,
                        color: Colors.white)),
                SizedBox(width: 40),
                Expanded(
                    flex: 2,
                    child: TextInput(
                        inputFormatter: true,
                        inputColor: Colors.white,
                        labelName: "Your Phone",
                        controller: controllerNumber,
                        color: Colors.white)),
                Expanded(
                    flex: 1,
                    child: SendButton(
                        controllerMessage: controllerMessage,
                        controllerName: controllerName,
                        controllerNumber: controllerNumber,
                        fontSize: 16))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
