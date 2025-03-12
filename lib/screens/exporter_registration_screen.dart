import 'package:agam/widgets/cf_button.dart';
import 'package:flutter/material.dart';

class ExporterRegistrationScreen extends StatelessWidget {
  const ExporterRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Exporter Registration"),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            CampusFindButton(onPressed: () {}, label: "Upload Bill of Export"),
            CampusFindButton(onPressed: () {}, label: "Upload BIS Approval Document"),
            CampusFindButton(onPressed: () {}, label: "Upload LEO (Let Export Order)"),
            CampusFindButton(onPressed: () {}, label: "Upload Bill of Landing"),
            const Spacer(),
            CampusFindButton(onPressed: () {}, label: "Complete Registration"),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
