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
          ],
        ),
      ),
    );
  }
}
