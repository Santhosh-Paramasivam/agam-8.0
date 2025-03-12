import 'package:agam/widgets/navigation_bar.dart';
import 'package:agam/widgets/ola_maps.dart';
import 'package:agam/widgets/icon_text_button.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/search_bar.dart';

class LiveTrackingScreen extends StatelessWidget {
  const LiveTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const ShipmentSearchBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Expanded(child: OlaMaps()), PortflowNavigationBar()],
        )));
  }
}
