import 'package:flutter/material.dart';
import '../pages/sample_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomePage(title: 'HomePage');
            }));
          },
          style: ButtonStyle(
            
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          child: const Text('Login to Continue'),
        ),
      ),
    );
  }
}
