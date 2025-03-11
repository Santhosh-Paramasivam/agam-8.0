import 'package:flutter/material.dart';
import 'package:agam/widgets/cf_input.dart';
import 'package:agam/widgets/cf_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  double TEXT_INPUT_WIDTH = 300;
  double TEXT_INPUT_HEIGHT = 50;

  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CampusFindInput(
                  labelText: "Enter email id",
                  controller: emailIdController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              CampusFindInput(
                  labelText: "Enter password",
                  controller: passwordController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              CampusFindButton(
                  onPressed: () async {
                    print("Hello");

                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => UserRegistrationScreen()));
                  },
                  label: "Login")
            ],
          ),
        ));
  }
}
