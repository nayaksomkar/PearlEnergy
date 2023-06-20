import 'package:flutter/material.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage(
                'assets/images/LogoTransparent.png',
              ),
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
