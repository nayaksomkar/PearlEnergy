import 'package:flutter/material.dart';
import 'package:pearlenergy/pages/abouttheproject.dart';
import 'package:pearlenergy/pages/login/userloginpage.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
              width: 300,
              child: Image(
                image: AssetImage(
                  'assets/images/LogoTransparent.png',
                ),
                height: 800,
                width: 800,
              ),
            ),
            TextButton(
                onPressed: () {
                  // Navigate to UserLoginPage when User Login button is pressed
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AboutTheProject(title: 'User Login');
                  }));
                },
                child: Text(
                  'About the Project',
                  style: TextStyle(
                      fontSize: 14, color: Colors.white.withOpacity(0.7)),
                )),
            const SizedBox(
              height: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // User Login Button
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                  ),
                  onPressed: () {
                    // Navigate to UserLoginPage when User Login button is pressed
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const UserLoginPage(title: 'User Login');
                    }));
                  },
                  child: const Text(
                    'User Login',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                // Admin Login Button
              ],
            )
          ],
        ),
      ),
    );
  }
}
