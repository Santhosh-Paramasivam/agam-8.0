import 'package:agam/screens/user_registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/cf_button.dart';
import 'package:agam/widgets/cf_input.dart';
import 'package:agam/config/config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController referenceIdController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const Text("AGAM"),
          CampusFindInput(labelText: "Enter reference id", controller: referenceIdController, width: Config.TEXT_INPUT_WIDTH, height: Config.TEXT_INPUT_HEIGHT, fontSize: Config.DEFAULT_FONT_SIZE),
          CampusFindInput(labelText: "Enter password", controller: referenceIdController, width: Config.TEXT_INPUT_WIDTH, height: Config.TEXT_INPUT_HEIGHT, fontSize: Config.DEFAULT_FONT_SIZE),
          const Text("AGAM")
          CampusFindButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => UserRegistrationScreen()));
          }, label: "User Registration")
        ])));
  }
}
