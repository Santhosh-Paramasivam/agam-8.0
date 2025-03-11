import 'package:flutter/material.dart';
import 'package:agam/widgets/verification_status_widget.dart';

class VerificationStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Verification Status"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                VerificationStatus(isVerified: true, attributeName: "GST Number"),
                VerificationStatus(isVerified: true, attributeName: "IEC Code"),
                VerificationStatus(isVerified: true, attributeName: "PAN ID"),
                VerificationStatus(isVerified: true, attributeName: "Aadhar Number"),
                VerificationStatus(isVerified: true, attributeName: "Email ID"),
                VerificationStatus(isVerified: false, attributeName: "Phone Number"),
              ]),
        ),
      ),
    );
  }
}
