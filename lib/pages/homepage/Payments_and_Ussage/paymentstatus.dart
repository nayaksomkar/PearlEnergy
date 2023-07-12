// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PaymentStatusPage extends StatefulWidget {
  const PaymentStatusPage({Key? key}) : super(key: key);

  @override
  _PaymentStatusPageState createState() => _PaymentStatusPageState();
}

class _PaymentStatusPageState extends State<PaymentStatusPage> {
// Initial Selected Value
  // Initial Selected Value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(),
        ), //A
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
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
