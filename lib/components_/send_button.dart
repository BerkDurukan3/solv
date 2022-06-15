import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:solv/constants.dart' as Constant;

class SendButton extends StatefulWidget {
  const SendButton({
    Key? key,
    required this.controllerMessage,
    required this.controllerName,
    required this.controllerNumber,
    required this.fontSize,
  }) : super(key: key);

  final TextEditingController controllerMessage;
  final TextEditingController controllerName;
  final TextEditingController controllerNumber;
  final double fontSize;

  @override
  State<SendButton> createState() => _SendButtonState();
}

class _SendButtonState extends State<SendButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {
        sendEmail(
            email: Constant.email,
            message: widget.controllerMessage.text,
            name: widget.controllerName.text,
            subject: widget.controllerNumber.text),
        clearInputs(widget.controllerMessage, widget.controllerName,
            widget.controllerNumber)
      },
      child: FittedBox(
          child: Text(
        'Send',
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: widget.fontSize,
        ),
      )),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(100, 100),
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        primary: Colors.red, // <-- Button color
        onPrimary: Colors.blue, // <-- Splash color
      ),
    );
  }
}

Future sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  var serviceId = 'service_ig1a6xu';
  var templateId = 'template_10nvqfh';
  var userId = 'user_atoqZNpiwZZg3NuQ1kPKZ';
  if (name == "" || subject == "") {
    print("bos");
  } else {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message
        }
      }),
    );
    print(response.body);
  }
}

clearInputs(
    TextEditingController controllerMessage,
    TextEditingController controllerName,
    TextEditingController controllerNumber) {
  controllerMessage.clear();
  controllerName.clear();
  controllerNumber.clear();
}
