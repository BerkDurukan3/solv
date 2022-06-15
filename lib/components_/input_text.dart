import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    required this.controller,
    required this.labelName,
    required this.color,
    required this.inputColor,
    required this.inputFormatter,
  });

  final String labelName;
  final TextEditingController controller;
  final Color color;
  final Color inputColor;
  final bool inputFormatter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        inputFormatters:
            inputFormatter ? [FilteringTextInputFormatter.digitsOnly] : [],
        style: TextStyle(color: inputColor),
        controller: controller,
        decoration: InputDecoration(
            enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: color)),
            labelText: labelName,
            labelStyle: TextStyle(
                fontSize: 15, color: Color.fromRGBO(146, 146, 146, 1))),
      ),
    );
  }
}
