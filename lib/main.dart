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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // flutter logo that will shown
            // above the background image
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/LogoTransparent.png',
                    ),
                    // fit: BoxFit.cover,
                    height: 300,
                    width: 300,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber),
                        foregroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: null,
                    child: Text(
                      'User Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              //TextButton(data),
            ],
          ),
        ),
      ),
    );
  }
}
