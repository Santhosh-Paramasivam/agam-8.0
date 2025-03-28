import 'package:agam/screens/common_user_registration.dart';
import 'package:agam/screens/importer_exporter_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/cf_button.dart';
import 'package:agam/widgets/cf_input.dart';
import 'package:agam/config/config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              const Image(
                image: AssetImage('assets/portflow_logo.png'),
                width: 300,
              ),
              CampusFindInput(
                  labelText: "Enter reference id",
                  controller: referenceIdController,
                  width: Config.TEXT_INPUT_WIDTH,
                  height: Config.TEXT_INPUT_HEIGHT,
                  fontSize: Config.DEFAULT_FONT_SIZE),
              const SizedBox(
                height: 15,
              ),
              CampusFindInput(
                  labelText: "Enter password",
                  controller: referenceIdController,
                  width: Config.TEXT_INPUT_WIDTH,
                  height: Config.TEXT_INPUT_HEIGHT,
                  fontSize: Config.DEFAULT_FONT_SIZE),
              Container(
                  alignment: Alignment.centerRight,
                  child: Row(children: [
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CommonUserRegistration()));
                      },
                      child: const Text("Not Registered Yet?"),
                    ),
                    const SizedBox(
                      width: 50,
                    )
                  ])),
              const SizedBox(
                height: 15,
              ),
              CampusFindButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ImporterExporterHomeScreen()));
                  },
                  label: "Login"),
              CampusFindButton(
                onPressed: () {},
                label: "Customs Registration",
              )
            ])));
  }
}
