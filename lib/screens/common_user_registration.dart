import 'package:flutter/material.dart';
import 'package:agam/widgets/cf_input.dart';
import 'package:agam/widgets/cf_button.dart';
import 'package:agam/config/config.dart';
import 'package:agam/widgets/pf_input_button.dart';

class CommonUserRegistration extends StatelessWidget {
  TextEditingController businessNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Common Registration"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, 
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, 
            children: [
              CampusFindInput(
                labelText: "Business Name",
                controller: businessNameController,
                width: Config.TEXT_INPUT_WIDTH,
                height: Config.TEXT_INPUT_HEIGHT, 
                fontSize: Config.DEFAULT_FONT_SIZE,
              ),
              const SizedBox(height: 20),
              PortFlowInputButton(
                  controller: businessNameController,
                  buttonLabel: "Verify",
                  inputLabel: "GST Number",
                  onPressed: () {}),
              const SizedBox(height: 10),
              PortFlowInputButton(
                  controller: businessNameController,
                  buttonLabel: "Verify",
                  inputLabel: "IEC Code",
                  onPressed: () {}),
              const SizedBox(height: 10),
              PortFlowInputButton(
                  controller: businessNameController,
                  buttonLabel: "Verify",
                  inputLabel: "PAN ID",
                  onPressed: () {}),
              const SizedBox(height: 10),
              PortFlowInputButton(
                  controller: businessNameController,
                  buttonLabel: "Verify",
                  inputLabel: "Aadhar Number",
                  onPressed: () {}),
              const SizedBox(height: 10),
              PortFlowInputButton(
                  controller: businessNameController,
                  buttonLabel: "Verify",
                  inputLabel: "Email ID",
                  onPressed: () {}),
              const SizedBox(height: 10),
              PortFlowInputButton(
                  controller: businessNameController,
                  buttonLabel: "Verify",
                  inputLabel: "Phone Number",
                  onPressed: () {}),
              CampusFindButton(onPressed: () {}, label: "Upload Digital Signature"),
              const SizedBox(
                height: 40,
              ),
              CampusFindButton(onPressed: () {}, label: "Continue Registration"),
            ],
          ),
        ),
      ),
    );
  }
}
