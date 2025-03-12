import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon buttonIcon;
  final String buttonText;

  const IconTextButton(
      {super.key, required this.onPressed, required this.buttonText, required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            child: Column(children: [
              IconButton(
                icon: buttonIcon,
                onPressed: onPressed,
                padding: const EdgeInsets.all(0),
              ),
              Text(buttonText)
            ])));
  }
}
