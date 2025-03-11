import 'package:agam/screens/verification_status_page.dart';
import 'package:flutter/material.dart';
import 'package:agam/screens/home_screen.dart';
import 'package:agam/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AGAM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: VerificationStatusPage(),
    );
  }
}
