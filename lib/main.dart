import 'package:flutter/material.dart';

void main() {
// main method thats
// run the RunMyApp
  runApp(const RunMyApp());
}

class RunMyApp extends StatelessWidget {
  const RunMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // materialApp with debugbanner false
    return MaterialApp(
      // theme of the app
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      // scaffold with app
      home: Scaffold(
        // appbat sets the title of the app
        appBar: AppBar(
          title: const Text('Set Backgound Image'),
        ),
        // Decoratedbox which takes the
        // decoration and child property
        body: const DecoratedBox(
          // BoxDecoration takes the image
          decoration: BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("images/img.png"), fit: BoxFit.cover),
          ),
          child: Center(
              // flutter logo that will shown
              // above the background image
              child: FlutterLogo(
            size: 200,
          )),
        ),
      ),
    );
  }
}
