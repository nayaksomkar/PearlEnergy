// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import '../../../packages/json/user/fetchuserjson.dart';
import '../commonvariables.dart';
import '../../../packages/variables/paymentsvariable.dart';

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
                      jsondata = userData(
                          path: r"Database\user\userpaymenthistory_2022.json",
                          userid: 'ABC801');
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
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "USSAGE",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "BILL",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "PAID ON",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  const Text(
                    'JAN',
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "$janUssage",
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "27",
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    year,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  const Text(
                    "Ankit",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "27",
                    style: const TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
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
