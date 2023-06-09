import 'package:flutter/material.dart';
import 'package:pearl_energy/views/home/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: const HomeView(),
    );
  }
}