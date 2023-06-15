import 'package:flutter/material.dart';
import '../pages/sample_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.jpg"),
                fit: BoxFit.cover)),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomePage(title: 'HomePage');
            }));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 179, 172, 42)),
          ),
          child: const Text('Login to Continue'),
        ),
      ),
    );
  }
}
