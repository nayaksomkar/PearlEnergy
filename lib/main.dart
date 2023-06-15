import 'package:flutter/material.dart';

void main() {
// main method thats
// run the MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
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
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // Logo will be shown above the background image
            children: [
              ImageIcon(
                AssetImage('assets/images/LogoTransparent.png'),
                size: 420,
                color: Colors.amber,
              ),
              ElevatedButton(onPressed: null, child: Text('login to continue'))
            ],
          ),
        ),
      ),
    );
  }
}
