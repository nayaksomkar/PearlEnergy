// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../commonvariables.dart';
import 'paymentsvariable.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PAYMENT HISTORY OF YEAR $year',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Select Year    : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
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
                      year = newValue;
                    });
                  },
                ),
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.white, width: 1.5),
              children: [
                const TableRow(children: [
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
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ])
              ],
            ),
          ],
        ),
      )),
    );
  }
}
