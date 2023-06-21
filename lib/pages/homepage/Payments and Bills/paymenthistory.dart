import 'package:flutter/material.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Text('leleo bro'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
