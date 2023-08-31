import 'package:flutter/material.dart';
import 'package:sample/pages/login/userloginpage.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage(
                'assets/images/LogoTransparent.png',
              ),
              height: 300,
              width: 300,
            ),
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
                const SizedBox(
                  height: 20,
                ),
                // Admin Login Button
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                  ),
                  onPressed: () {
                    // Add functionality for Admin Login button if needed
                  },
                  child: const Text(
                    'Admin Login',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                IconButton(
                  onPressed: () {
                    // Add your code here
                  },
                  icon: Image.asset(
                    'CurrentUssage.gif',
                    height: 150,
                    width: 150,
                  ),
                )
                // Add more buttons or widgets here as needed
              ],
            )
          ],
        ),
      ),
    );
  }
}
