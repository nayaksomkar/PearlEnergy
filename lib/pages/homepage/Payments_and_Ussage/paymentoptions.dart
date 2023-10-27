// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pearlenergy/pages/homepage/Payments_and_Ussage/paymentdone.dart';

class PaymentOptionPage extends StatefulWidget {
  const PaymentOptionPage({Key? key}) : super(key: key);

  @override
  _PaymentOptionPageState createState() => _PaymentOptionPageState();
}

class _PaymentOptionPageState extends State<PaymentOptionPage> {
// Initial Selected Value
  // Initial Selected Value
  String consumerName = 'Akshay Sha'.toUpperCase();
  String bill = '784 (INR)';
  String consumerID = 'ABC821';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                          'BILLED AMOUNT : $bill',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                            // alignment: Alignment.center,
                            child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      iconSize: 100,
                                      icon: Image.asset(
                                        'assets/images/UPIlogo.png',
                                      ),
                                      onPressed: () {
                                        // Add your UPI payment logic here
                                      },
                                    ),
                                    Text('Payment using UPI'),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      iconSize: 100,
                                      icon: Image.asset(
                                        'assets/images/creditcard.jpg',
                                        // height: 800,
                                        // width: 800,
                                      ),
                                      onPressed: () {
                                        // Add your card payment logic here
                                      },
                                    ),
                                    Text(
                                      'Payment using Card',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white.withOpacity(0.7)),
                                    )
                                  ],
                                )
                              ],
                            ),
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
        ),
      ),
    ));
  }
}
