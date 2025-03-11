import 'package:agam/screens/verification_status_screen.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            CampusFindInput(
              labelText: "Business Name",
              controller: businessNameController,
              width: Config.TEXT_INPUT_WIDTH,
              height: Config.TEXT_INPUT_HEIGHT,
              fontSize: Config.DEFAULT_FONT_SIZE,
            ),
            const SizedBox(height: 10),
            PortFlowInputButton(
                controller: businessNameController,
                buttonLabel: "Upload",
                inputLabel: "GST Number",
                onPressed: () {}),
            const SizedBox(height: 10),
            PortFlowInputButton(
                controller: businessNameController,
                buttonLabel: "Upload",
                inputLabel: "IEC Code",
                onPressed: () {}),
            const SizedBox(height: 10),
            PortFlowInputButton(
                controller: businessNameController,
                buttonLabel: "Upload",
                inputLabel: "PAN ID",
                onPressed: () {}),
            const SizedBox(height: 10),
            PortFlowInputButton(
                controller: businessNameController,
                buttonLabel: "Upload",
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
            const SizedBox(height: 10),
            CampusFindButton(onPressed: () {}, label: "Upload Digital Signature"),
            const Spacer(),
            CampusFindButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => VerificationStatusScreen()));
            }, label: "Continue Registration"),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
