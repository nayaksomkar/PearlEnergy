// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// ignore: unused_import
//import '../../../packages/user/fetchuserjson.dart';
//import '../../../packages/json/testjson.dart';
//import '../../../packages/variables/paymentsvariable.dart';

String year = '2022';
String csvFileName = 'sample.csv';
String csvFilePath = '/nayaksomkar/PearlEnergy/master/assets/csv/';
String tempstr = '';

class PaymentHistoryPage extends StatefulWidget {
  const PaymentHistoryPage({Key? key}) : super(key: key);

  @override
  _PaymentHistoryPageState createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
// Initial Selected Value

  void fetchCSVData() async {
    String data;
    final url =
        Uri.https('raw.githubusercontent.com', '$csvFilePath/$csvFileName');

    data = await http.read(url);

    var temp = data.split('\n');
    var row = temp[0];
    var rowele = row.split(',');
    setState(() {
      tempstr = rowele[0].toString();
    });
  }

  @override
  // ignore: must_call_super
  initState() {
    // ignore: avoid_print
    //print("initState Called");
    fetchCSVData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage(
                'assets/images/LogoTransparent.png',
              ),
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 150,
            ),
            // Text(jsonData['ABC801']['Jan']['ussage'].toString()),
            //Text(test.toString()),
            Text(tempstr),
            //buildRow(['dsdfs','sdfsfs']),
            TextButton(onPressed: fetchCSVData, child: Text('Yo'))
          ],
        ),
      ),
    );
  }
}

