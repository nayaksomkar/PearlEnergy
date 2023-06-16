import 'package:flutter/material.dart';
//import 'pages/home_page.dart';

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
      home: Scaffold(
        // appbat sets the title of the app

        // Decoratedbox which takes the
        // decoration and child property
        body: Container(
          width: double.infinity,
          // BoxDecoration takes the image
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.jpg"),
                fit: BoxFit.fill),
          ),
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // flutter logo that will shown
              // above the background image
              children: [
                FlutterLogo(
                  size: 200,
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: Text(
                    'Login to continue',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
