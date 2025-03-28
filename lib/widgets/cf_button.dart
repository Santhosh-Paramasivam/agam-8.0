import 'package:flutter/material.dart';

class CampusFindButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double width;

  const CampusFindButton(
      {super.key, required this.onPressed, required this.label, this.width = 300});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: TextButton(
            style: const ButtonStyle(
                shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                backgroundColor: WidgetStatePropertyAll(Colors.black)),
            onPressed: onPressed,
            child: Text(
              label,
              style: const TextStyle(color: Colors.white),
            )));
  }
}
