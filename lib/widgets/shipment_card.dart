import 'package:flutter/material.dart';

class ShipmentCard extends StatelessWidget {
  final String shipmentName;
  final String shipmentId;
  final String currentStatus;
  final String trackingNumber;
  final String shipmentType;
  final Image image;
  final VoidCallback onPressed;

  const ShipmentCard(
      {super.key,
      required this.shipmentName,
      required this.image,
      required this.shipmentId,
      required this.currentStatus,
      required this.trackingNumber,
      required this.shipmentType,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      Container(
        width: 350,
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        decoration:
            BoxDecoration(color: const Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(30)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              shipmentName,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(onPressed: onPressed, icon: const Icon(Icons.open_in_new)),
            const Spacer(),
            image,
            const SizedBox(
              width: 20,
            ),
          ]),
          Text("Shipment ID : $shipmentId"),
          Text("Current Status : $currentStatus"),
          Text("Tracking Number : $trackingNumber"),
          Text("Shipment Type : $shipmentType"),
        ]),
      )
    ]);
  }
}
