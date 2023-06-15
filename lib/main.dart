import 'package:flutter/material.dart';

void main() {
// main method thats
// run the MyApp
  runApp(const MyApp());
}

class MyApptends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // materialApp with debugbanner false
    return MaterialApp(
      // theme of the app
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      // scaffold with app
      home: const Scaffold(
        // appbat sets the title of the app
        // Decoratedbox which takes the
        // decoration and child property
        body: DecoratedBox(
          // BoxDecoration takes the image
          decoration: BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage('assets/images/BackgroundImage.jpg'),
                fit: BoxFit.cover),
          ),
          child: Center(
              // flutter logo that will shown
              // above the background image
              child: ImageIcon(
            AssetImage('assets/images/logoTransparent.png'),
            size: 200,
          )),
        ),
      ),
    );
  }
}
