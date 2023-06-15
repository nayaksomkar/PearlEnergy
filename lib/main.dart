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
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      // scaffold with app
      home: Scaffold(
        // appbat sets the title of the app
        // Decoratedbox which takes the
        // decoration and child property
        body: DecoratedBox(
          // BoxDecoration takes the image
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage('assets/images/BackgroundImage.jpg'),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // Logo will be shown above the background image
            children: [
              const ImageIcon(
                AssetImage('assets/images/LogoTransparent.png'),
                size: 420,
                color: Colors.amber,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.amber,
                  ),
                  onPressed:  () {
   Navigator.push(context, MaterialPageRoute(builder: (context) {
     return const HomePage(title: 'SecondPage');
   }));
},


                  child: const Text(
                    'login to continue',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
