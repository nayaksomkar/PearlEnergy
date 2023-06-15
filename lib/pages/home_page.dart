import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/BackgroundImage.jpg'),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
