import 'package:agam/screens/exporter_registration_screen.dart';
import 'package:agam/screens/importer_registration_screen.dart';
import 'package:agam/widgets/cf_button.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/verification_status_widget.dart';

class VerificationStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Verification Status"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              VerificationStatus(isVerified: true, attributeName: "GST Number"),
              const SizedBox(
                height: 15,
              ),
              VerificationStatus(isVerified: true, attributeName: "IEC Code"),
              const SizedBox(
                height: 15,
              ),
              VerificationStatus(isVerified: true, attributeName: "PAN ID"),
              const SizedBox(
                height: 15,
              ),
              VerificationStatus(isVerified: true, attributeName: "Aadhar Number"),
              const SizedBox(
                height: 15,
              ),
              VerificationStatus(isVerified: true, attributeName: "Email ID"),
              const SizedBox(
                height: 15,
              ),
              VerificationStatus(isVerified: false, attributeName: "Phone Number"),
              const SizedBox(
                height: 30,
              ),
              Container(
                  // color: Color(0xFFECE6F0),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  // decoration: BoxDecoration(color: Color(0xFFECE6F0)),
                  decoration: BoxDecoration(
                      color: Color(0xFFECE6F0),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Text("Phone Number Not Verified", style: const TextStyle(fontSize: 20)),
                      Text("Verification link has not been clicked")
                    ],
                  )),
              Spacer(),
              CampusFindButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ImporterRegistrationScreen()));
              }, label: "Continue as Importer"),
              CampusFindButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ExporterRegistrationScreen()));
              }, label: "Continue as Exporter"),
              const SizedBox(width: 20),
            ]),
      ),
    );
  }
}
