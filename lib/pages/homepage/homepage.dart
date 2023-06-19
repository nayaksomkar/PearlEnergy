import 'package:flutter/material.dart';
import 'package:sample/main.dart';
//import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Payments and Bills'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.abc,
                              size: 20,
                            )),
                        Text('Elemenet_1')
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.abc,
                              size: 20,
                            )),
                        Text('Elemenet_1')
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.abc,
                              size: 20,
                            )),
                        Text('Elemenet_1')
                      ],
                    ),
                  ],
                ),
                Text('Ussage and Consumption'),
                Text('Manage Account'),
              ],
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyApp();
                }));
              },
              child: const Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
