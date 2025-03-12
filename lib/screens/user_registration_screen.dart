import 'package:flutter/material.dart';
import 'package:agam/widgets/cf_input.dart';
import 'package:agam/widgets/cf_button.dart';
import 'package:agam/widgets/dropdown_widget.dart';

import 'package:agam/screens/dashboard_screen.dart';

class UserRegistrationScreen extends StatelessWidget {
  TextEditingController businessNameController = TextEditingController();
  TextEditingController gstNumberController = TextEditingController();
  TextEditingController iecCodeController = TextEditingController();
  TextEditingController panIdController = TextEditingController();
  double TEXT_INPUT_WIDTH = 300;
  double TEXT_INPUT_HEIGHT = 50;
  List<String> USER_TYPE = ["IMPORTER", "EXPORTER"];

  UserRegistrationScreen({super.key});

  List<DropdownMenuItem<String>> createUserTypeDropDown() {
    List<DropdownMenuItem<String>> userTypes = [];

    for (String type in USER_TYPE) {
      userTypes.add(DropdownMenuItem(value: type, child: Text(type)));
    }

    return userTypes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              CampusFindInput(
                  labelText: "Enter Business Name",
                  controller: businessNameController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              CampusFindInput(
                  labelText: "Enter GST Number",
                  controller: gstNumberController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              CampusFindInput(
                  labelText: "Enter IEC Code",
                  controller: iecCodeController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              CampusFindInput(
                  labelText: "Enter PAN ID",
                  controller: panIdController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              Row(
                // Drop down not implemented
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Select User Type"),
                  CustomDropdownButton(
                      value: "IMPORTER",
                      items: createUserTypeDropDown(),
                      onChanged: (String? type) {},
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // Email not implemented
              CampusFindInput(
                  labelText: "Enter email Id",
                  controller: panIdController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              // Password not implemented
              CampusFindInput(
                  labelText: "Create a strong password",
                  controller: panIdController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              // Password not implemented
              CampusFindInput(
                  labelText: "Repeat password",
                  controller: panIdController,
                  width: TEXT_INPUT_WIDTH,
                  height: TEXT_INPUT_HEIGHT,
                  fontSize: 14),
              const SizedBox(
                height: 20,
              ),

              // Yet to be implemented
              CampusFindButton(
                  onPressed: () async {
                   print("Hello");

                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => UserRegistrationScreen()));
                  },
                  label: "Upload documents"),
              CampusFindButton(
                  onPressed: () async {
                   print("Hello");

                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                  },
                  label: "Register")
            ])));
  }
}
