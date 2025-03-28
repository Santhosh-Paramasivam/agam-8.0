import 'package:agam/widgets/cf_button.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/pf_input_button.dart';
import 'package:agam/screens/importer_exporter_home_screen.dart';

class ImporterRegistrationScreen extends StatelessWidget {
  TextEditingController iecCodeController = TextEditingController();
  TextEditingController containerIdController = TextEditingController();

  ImporterRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Importer Registration"),
          backgroundColor: Colors.white,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            PortFlowInputButton(
                controller: iecCodeController,
                buttonLabel: "Upload",
                inputLabel: "IEC Code",
                onPressed: () {}),
            PortFlowInputButton(
                controller: containerIdController,
                buttonLabel: "Upload",
                inputLabel: "Container Id",
                onPressed: () {}),
            CampusFindButton(onPressed: () {}, label: "Autofill Export Documents"),
            const SizedBox(height: 20),
            const Text("Upload Export Documents", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            CampusFindButton(onPressed: () {}, label: "Upload Bill of Export"),
            CampusFindButton(onPressed: () {}, label: "Upload BIS Approval Document"),
            CampusFindButton(onPressed: () {}, label: "Upload LEO (Let Export Order)"),
            CampusFindButton(onPressed: () {}, label: "Upload Bill of Landing"),
            const Spacer(),
            CampusFindButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ImporterExporterHomeScreen()));
            }, label: "Complete Registration"),
            const SizedBox(height: 20),
          ],
        )));
  }
}
