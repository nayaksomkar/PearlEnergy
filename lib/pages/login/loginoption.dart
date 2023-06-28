import 'package:flutter/material.dart';
import 'package:sample/pages/nointernet.dart';
import 'package:sample/pages/login/newuser.dart';
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
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    foregroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UserLoginPage(title: 'User Login');
                  }));
                },
                child: const Text(
                  'Continue to Login',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const NewUserPage(title: 'User Login');
                  }));
                },
                child: const Text(
                  'New User',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const NoInternetPage();
                  }));
                },
                child: const Text(
                  'Error page',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
