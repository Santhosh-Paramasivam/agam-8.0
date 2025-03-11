import 'package:flutter/material.dart';

class CampusFindInput extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final double width;
  final bool obscureText;
  final double height;
  final double fontSize;

  const CampusFindInput({
    super.key,
    required this.labelText,
    required this.controller,
    required this.width,
    required this.height,
    required this.fontSize,
    this.obscureText = false,
  });

  static const Color lightGrey = Color(0xFFF7F8F9);
  static const Color darkGrey = Color(0xFF8391A1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        cursorColor: darkGrey,
        style: TextStyle(fontSize: fontSize, color: darkGrey),
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              width: 1,
              color: darkGrey,
            )),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              width: 1,
              color: darkGrey,
            )),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: lightGrey,
            label: Text(labelText, style: TextStyle(fontSize: fontSize, color: darkGrey)),
            contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            border: const OutlineInputBorder(
                borderSide: BorderSide(
              width: 1,
              color: darkGrey,
            ))),
      ),
    );
  }
}

