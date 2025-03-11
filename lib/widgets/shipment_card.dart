import 'package:flutter/material.dart';

class ShipmentCard extends StatelessWidget {
  final String shipmentName;
  final Image image;

  ShipmentCard({super.key, required this.shipmentName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20,),
      Container(
        width: 350,
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        decoration:
            BoxDecoration(color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            SizedBox(
              width: 20,
            ),
            Text(shipmentName, style: TextStyle(fontSize: 18),),
            Spacer(),
            image,
            // Icon(
            //   Icons.abc,
            //   size: 50,
            // ),
            SizedBox(
              width: 20,
            ),
          ]),
          Text("Export Date : "),
          Text("Export ID : "),
          Text("Package Quantity : "),
        ]),
      )
    ]);
  }
}
