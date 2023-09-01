import 'package:flutter/material.dart';
import 'package:pearlenergy/pages/login/loginoption.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/images/NoInternetConnection.jpg',
              ),
              height: 400,
              width: 400,
            ),
            const SizedBox(
              height: 100,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginOption(title: 'LoginOption');
                }));
              },
              // ignore: prefer_const_constructors
              child: Text(
                'Try Again',
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      )),
    );
  }
}
