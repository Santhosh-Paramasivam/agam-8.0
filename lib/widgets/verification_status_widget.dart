import 'package:flutter/material.dart';

class VerificationStatus extends StatelessWidget {
  final bool isVerified;
  final String attributeName;

  const VerificationStatus({super.key, required this.isVerified, required this.attributeName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 50,),
          Expanded(
            child: Text(
              attributeName,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: isVerified ? Colors.green : Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text(
              isVerified ? "Verified" : "Not Verified",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 50,),
        ],
      ),
    );
  }
}

