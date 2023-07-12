// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PaymentDonePage extends StatefulWidget {
  const PaymentDonePage({Key? key}) : super(key: key);

  @override
  _PaymentDonePageState createState() => _PaymentDonePageState();
}

class _PaymentDonePageState extends State<PaymentDonePage> {
// Initial Selected Value
  // Initial Selected Value
  String consumerName = 'Akshay Sha'.toUpperCase();
  String bill = '6969 (INR)';
  String consumerID = 'ABC821';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Card(
          // color: Colors.black,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.account_circle_outlined,
                  size: 40,
                ),
                title: Text(
                  'NAME  : $consumerName',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CONSUMER ID : $consumerID',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'PAID AMOUNT : $bill',
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(
                                'assets/gif/PaymentDoneGIF.gif',
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Text(
                              'PAYMENT DONE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.green,
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        const Image(
          image: AssetImage(
            'assets/images/LogoTransparent.png',
          ),
          height: 150,
          width: 150,
        ),
      ],
    ));
  }
}
