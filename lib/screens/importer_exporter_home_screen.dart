import 'package:agam/widgets/icon_text_button.dart';
import 'package:agam/widgets/shipment_card.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/search_bar.dart';

class ImporterExporterHomeScreen extends StatelessWidget {
  const ImporterExporterHomeScreen({super.key});

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
          children: [
            const ShipmentCard(shipmentName: "Resistor", image: Image(image: AssetImage('assets/resistor.jpg'), width: 70,),),
            const ShipmentCard(shipmentName: "Battery",image: Image(image: AssetImage('assets/battery.jpg'), width: 70),),
            const ShipmentCard(shipmentName: "Capacitor",image: Image(image: AssetImage('assets/capacitor.jpg'), width: 70),),
            const Spacer(),
            Container(  
                color: const Color(0xFFD9D9D9),
                child: Row(
              children: [
                IconTextButton(
                    onPressed: () {},
                    buttonText: "Shipments",
                    buttonIcon: const Icon(Icons.storage)),
                IconTextButton(
                    onPressed: () {},
                    buttonText: "Live-Tracking",
                    buttonIcon: const Icon(Icons.location_on)),
                IconTextButton(
                    onPressed: () {}, buttonText: "Person", buttonIcon: const Icon(Icons.person)),
              ],
            ))
          ],
        )));
  }
}
