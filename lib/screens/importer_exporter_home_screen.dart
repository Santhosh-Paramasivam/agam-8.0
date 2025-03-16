import 'package:agam/screens/live_tracking_screen.dart';
import 'package:agam/widgets/icon_text_button.dart';
import 'package:agam/widgets/shipment_card.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/search_bar.dart';
import 'package:agam/widgets/navigation_bar.dart';

class ImporterExporterHomeScreen extends StatelessWidget {
  const ImporterExporterHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ShipmentSearchBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ShipmentCard(
                    onPressed: (){},
                    shipmentName: "Resistor",
                    shipmentId: "#SHIP12345",
                    currentStatus: "In Transit",
                    shipmentType: "Air",
                    trackingNumber: "1234351232",
                    image: const Image(
                      image: AssetImage('assets/resistor.jpg'),
                      width: 70,
                    ),
                  ),
                  ShipmentCard(
                    onPressed: (){},
                    shipmentId: "#SHIP12412",
                    shipmentName: "Battery",
                    currentStatus: "In Transit",
                    shipmentType: "Seaways",
                    trackingNumber: "65765534212",
                    image: const Image(
                        image: AssetImage('assets/battery.jpg'), width: 70),
                  ),
                  ShipmentCard(
                    onPressed: (){},
                    shipmentName: "Capacitor",
                    shipmentId: "SHIP563423",
                    currentStatus: "At Customs",
                    shipmentType: "Seaways",
                    trackingNumber: "65765534212",
                    image: const Image(
                        image: AssetImage('assets/capacitor.jpg'), width: 70),
                  ),
                  const SizedBox(height: 20), // Add spacing before navbar
                ],
              ),
            ),
          ),
          PortflowNavigationBar(),
        ],
      ),
    );
  }
}

