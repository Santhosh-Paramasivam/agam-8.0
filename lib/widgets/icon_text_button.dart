import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon buttonIcon;
  final String buttonText;

  IconTextButton(
      {super.key, required this.onPressed, required this.buttonText, required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            child: Column(children: [
              IconButton(
                icon: buttonIcon,
                onPressed: onPressed,
                padding: EdgeInsets.all(0),
              ),
              Text(buttonText)
            ])));
  }
}
