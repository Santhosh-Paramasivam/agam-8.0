import 'package:agam/screens/user_registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/cf_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text("AGAM"),
          CampusFindButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => UserRegistrationScreen()));
          }, label: "User Registration")
        ])));
  }
}
