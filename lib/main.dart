import 'package:flutter/material.dart';
import 'pages/login/loginoption.dart';

void main() {
// main method thats
// run the MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PearlEnergy',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        primarySwatch: Colors.amber,
      ),
      home: const LoginOption(title: 'LoginOption'),
      debugShowCheckedModeBanner: false,
    );
  }
}
