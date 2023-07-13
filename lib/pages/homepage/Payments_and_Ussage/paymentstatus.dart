// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/pages/homepage/Payments_and_Ussage/billamount.dart';

class PaymentStatusPage extends StatefulWidget {
  const PaymentStatusPage({Key? key}) : super(key: key);

  @override
  _PaymentStatusPageState createState() => _PaymentStatusPageState();
}

class _PaymentStatusPageState extends State<PaymentStatusPage> {
// Initial Selected Value
  // Initial Selected Value

  String consumerName = 'Akshay Sha'.toUpperCase();
  String consumerID = 'ABC821';
  String paymentDate = '29-06-2023';
  String paymentStatus = '"Not Paid"';
  String bill = '6969 (INR)';
  String ussage = '6969 kWh';
  String billOf = 'JULY 2023';
  String lastDate = '30-07-2023';

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
                          'ELECTRICITY USED : $ussage',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'BILLED AMOUNT : $bill',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'BILLING MONTH : $billOf',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'LAST DATE : $lastDate',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'STATUS : $paymentStatus',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const AmountPage();
                                }));
                              },
                              child: Text(
                                'Pay Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )),
                        ),
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
              height: 180,
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
