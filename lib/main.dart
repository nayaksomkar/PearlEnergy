import 'package:flutter/material.dart';
import 'pages/login/loginoption.dart';

void main() {
  // Main method that runs the MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pearl Energy', // The title for the app
      theme: ThemeData(
        brightness: Brightness.dark, // Set the brightness of the app to dark
        primaryColor: Colors.black, // Set the primary color to black
        primarySwatch: Colors.amber, // Set the primary swatch color to amber
      ),
      home: const LoginOption(title: 'LoginOption'), // Set the home page to the LoginOption widget
      debugShowCheckedModeBanner: false, // Disable the debug mode banner
    );
  }
}
