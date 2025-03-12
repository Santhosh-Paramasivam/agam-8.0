import 'package:flutter/material.dart';

class ShipmentCard extends StatelessWidget {
  final String shipmentName;
  final Image image;

  const ShipmentCard({super.key, required this.shipmentName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20,),
      Container(
        width: 350,
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        decoration:
            BoxDecoration(color: const Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            const SizedBox(
              width: 20,
            ),
            Text(shipmentName, style: const TextStyle(fontSize: 18),),
            const Spacer(),
            image,
            // Icon(
            //   Icons.abc,
            //   size: 50,
            // ),
            const SizedBox(
              width: 20,
            ),
          ]),
          const Text("Export Date : "),
          const Text("Export ID : "),
          const Text("Package Quantity : "),
        ]),
      )
    ]);
  }
}
