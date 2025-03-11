import 'package:agam/screens/exporter_registration_screen.dart';
import 'package:agam/screens/importer_exporter_home_screen.dart';
import 'package:agam/screens/verification_status_screen.dart';
import 'package:flutter/material.dart';
import 'package:agam/screens/home_screen.dart';
import 'package:agam/screens/login_screen.dart';
import 'package:agam/screens/importer_registration_screen.dart';

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
      home: ImporterExporterHomeScreen(),
    );
  }
}
