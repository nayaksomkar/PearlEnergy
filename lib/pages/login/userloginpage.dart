import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/pages/homepage/homepagelayout.dart';
import 'package:sample/pages/login/loginoption.dart';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
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
                'assets/images/IconTransparent.png',
              ),
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 80,
            ),
            TextField(
              decoration: const InputDecoration(
                  hintText: "Enter your Customer Identification Number",
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: const InputDecoration(
                  hintText: "Enter your Registered Phone Number",
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage(title: 'Home Page');
                }));
              },
              // ignore: prefer_const_constructors
              child: Text(
                'Verify',
                // ignore: prefer_const_constructors
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginOption(title: 'LoginOption');
                }));
              },
              // ignore: prefer_const_constructors
              child: Text(
                'Return To Login Page',
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
