import 'package:agam/widgets/icon_text_button.dart';
import 'package:agam/widgets/shipment_card.dart';
import 'package:flutter/material.dart';
import 'package:agam/widgets/search_bar.dart';

class ImporterExporterHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: ShipmentSearchBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ShipmentCard(shipmentName: "Resistor", image: const Image(image: AssetImage('assets/resistor.jpg'), width: 70,),),
            ShipmentCard(shipmentName: "Battery",image: const Image(image: AssetImage('assets/battery.jpg'), width: 70),),
            ShipmentCard(shipmentName: "Capacitor",image: const Image(image: AssetImage('assets/capacitor.jpg'), width: 70),),
            const Spacer(),
            Container(  
                color: Color(0xFFD9D9D9),
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
