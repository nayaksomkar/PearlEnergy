import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pearlenergy/main.dart';
import 'package:pearlenergy/pages/login/newuser.dart';
import 'package:pearlenergy/pages/login/otpPage.dart';

String consumerID = '';
String mobileNumber = '';

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
                maxLength: 6,
                decoration: InputDecoration(
                  labelText: 'Consumer ID',
                  helperText: "Enter your unique Consumer ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
                ],
                onChanged: (value) {
                  if (value.length == 6) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OtpPage(
                        title: 'New User',
                      );
                    }));
                  }
                },
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OtpPage(
                      title: 'New User',
                    );
                  }));
                },
                child: const Text(
                  'Verify',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const NewUserPage(
                      title: 'New User',
                    );
                  }));
                },
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "Don't have an account yet?",
                        style: TextStyle(fontSize: 15),
                      ),
                      TextSpan(
                        text: "  New User?",
                        style: TextStyle(color: Colors.amber, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyApp();
                  }));
                },
                child: const Text(
                  'Return To Login Page',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
