// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String year = '2022';
String csvFileName = 'sample.csv';
String csvFilePath = '/nayaksomkar/PearlEnergy/master/assets/csv/';
List mainList = [
  ['JAN', 'N/A', 'N/A'],
  ['FEB', 'N/A', 'N/A'],
  ['MAR', 'N/A', 'N/A'],
  ['APR', 'N/A', 'N/A'],
  ['MAY', 'N/A', 'N/A'],
  ['JUN', 'N/A', 'N/A'],
  ['JUL', 'N/A', 'N/A'],
  ['AUG', 'N/A', 'N/A'],
  ['SEP', 'N/A', 'N/A'],
  ['OCT', 'N/A', 'N/A'],
  ['NOV', 'N/A', 'N/A'],
  ['DEC', 'N/A', 'N/A']
];

class PaymentHistoryPage extends StatefulWidget {
  const PaymentHistoryPage({Key? key}) : super(key: key);

  @override
  _PaymentHistoryPageState createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
// Initial Selected Value
  // Initial Selected Value
  String dropdownvalue = 'SELECT YEAR';

  // List of items in our dropdown menu
  var items = [
    'SELECT YEAR',
    '2020',
    '2021',
    '2022',
    '2023',
  ];

  void fetchCSVData() async {
    final url =
        Uri.https('raw.githubusercontent.com', '$csvFilePath/$csvFileName');
    String urlData = await http.read(url);
    var tempUrlData = urlData.split('\n');
    List tempList = [];

    for (final elements in tempUrlData) {
      final element = elements.split(',');
      tempList.add(element);
    }

    setState(() {
      mainList = tempList;

      if (items.contains('SELECT YEAR')) {
        items.remove('SELECT YEAR');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton(
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                  fetchCSVData();
                });
              },
            ),
            const SizedBox(
              height: 150,
            ),
            Table(
              border: TableBorder.all(color: Colors.white, width: 1.5),
              children: [
                TableRow(children: [
                  Text(
                    'MONTH',
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'BILL',
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'PAYMENT DATE',
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[0][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[0][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[0][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[1][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[1][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[1][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[2][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[2][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[2][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[3][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[3][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[3][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[4][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[4][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[4][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[5][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[5][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[5][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[6][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[6][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[6][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[7][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[7][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[7][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[8][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[8][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[8][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[9][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[9][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[9][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[10][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[10][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[10][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    mainList[11][0],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[11][1],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mainList[11][2],
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ],
            ),
            const Image(
              image: AssetImage(
                'assets/images/LogoTransparent.png',
              ),
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    ));
  }
}
