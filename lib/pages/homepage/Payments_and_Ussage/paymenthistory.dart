// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
//import '../../../packages/user/fetchuserjson.dart';
//import '../../../packages/json/testjson.dart';
//import '../../../packages/variables/paymentsvariable.dart';

String year = '2022';


class PaymentHistoryPage extends StatefulWidget {
  const PaymentHistoryPage({Key? key}) : super(key: key);

  @override
  _PaymentHistoryPageState createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
// Initial Selected Value
  List<List<dynamic>> csvData = [];

  void _loadCSV() async {
    final rawData = await rootBundle
        .loadString("assets/csv/Payments_and_Ussage/ABC8001.csv");
    List<List<dynamic>> listData = const CsvToListConverter().convert(rawData);

    setState(() {
      csvData = listData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dbestech"),
      ),
      body: ListView.builder(
        itemCount: csvData.length,
        itemBuilder: (_, index) {
          return Card(
            margin: const EdgeInsets.all(3),
            color: index == 0 ? Colors.amber : Colors.white,
            child: ListTile(
              leading: Text(csvData[index][0].toString(),
                  style: TextStyle(color: Colors.red)),
              title: Text(csvData[index][1].toString(),
                  style: TextStyle(color: Colors.red)),
              trailing: Text(csvData[index][2].toString(),
                  style: TextStyle(color: Colors.red)),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: const Icon(Icons.add),
      ),
      // Display the contents from the CSV file
    );
  }
}
