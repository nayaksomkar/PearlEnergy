// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/pages/homepage/homepagelayout.dart';

class AccountDetailsPage extends StatefulWidget {
  const AccountDetailsPage({Key? key}) : super(key: key);

  @override
  _AccountDetailsPageState createState() => _AccountDetailsPageState();
}

class _AccountDetailsPageState extends State<AccountDetailsPage> {
// Initial Selected Value
  // Initial Selected Value
  String consumerName = 'Akshay Sha'.toUpperCase();
  String consumerID = 'ABC821';
  String consumerSex = 'M';
  String consumerEmailID = 'akshaysha@mail.com';
  String consumerMobileNumber = '806-364-780';
  String consumerAddress =
      '\nS/2 Tulsi Mahal Navghar Cross Talav Road Bhayander | Mumbai - Puducherry - 401105 - India'
          .replaceAll("|", "\n");

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
                          'SEX : $consumerSex',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'EMAIL ID : $consumerEmailID',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'MOBILE NUMBER : $consumerMobileNumber',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'ADDRESS : $consumerAddress',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const HomePage(title: 'LoginOption');
                                }));
                              },
                              child: Text(
                                'Return To Home Page',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
