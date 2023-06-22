// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../commonvariables.dart';

class PaymentHistoryPage extends StatefulWidget {
  const PaymentHistoryPage({Key? key}) : super(key: key);

  @override
  _PaymentHistoryPageState createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
// Initial Selected Value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Select Year : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: dropdownItems,
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.white, width: 1.5),
              children: const [
                TableRow(children: [
                  Text(
                    "MONTH",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "USSAGE",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "BILL",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "PAID ON",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    "2",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
