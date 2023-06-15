import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
// main method thats
// run the MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/BackgroundImage.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add other widgets here
          ],
        ),
      ),
    );
  }
}
