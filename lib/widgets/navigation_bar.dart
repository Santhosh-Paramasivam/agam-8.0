import 'package:flutter/material.dart';
import 'icon_text_button.dart';
import 'package:agam/screens/live_tracking_screen.dart';
import 'package:agam/screens/importer_exporter_home_screen.dart';

class PortflowNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(  
                color: const Color(0xFFD9D9D9),
                child: Row(
              children: [
                IconTextButton(
                    onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const ImporterExporterHomeScreen()));
                    },
                    buttonText: "Shipments",
                    buttonIcon: const Icon(Icons.storage)),
                IconTextButton(
                    onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const LiveTrackingScreen()));
                    },
                    buttonText: "Live-Tracking",
                    buttonIcon: const Icon(Icons.location_on)),
                IconTextButton(
                    onPressed: () {}, buttonText: "Person", buttonIcon: const Icon(Icons.person)),
              ],
            ));
  }
}