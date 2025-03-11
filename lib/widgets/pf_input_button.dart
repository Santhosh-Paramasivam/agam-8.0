import 'package:flutter/material.dart';
import 'package:agam/config/config.dart';
import 'cf_button.dart';
import 'cf_input.dart';

class PortFlowInputButton extends StatelessWidget {
  TextEditingController controller;
  String inputLabel;
  String buttonLabel;
  final VoidCallback onPressed;

  PortFlowInputButton(
      {super.key,
      required this.controller,
      required this.buttonLabel,
      required this.inputLabel,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min, 
        children: [
          CampusFindInput(
              labelText: inputLabel,
              controller: controller,
              width: 200,
              height: Config.TEXT_INPUT_HEIGHT,
              fontSize: Config.DEFAULT_FONT_SIZE),
          const SizedBox(
            width: 20,
          ),
          CampusFindButton(
            onPressed: onPressed,
            label: buttonLabel,
            width: Config.SMALL_BUTTON_WIDTH,
          )
        ],
      ),
    );
  }
}
