import 'package:flutter/material.dart';
import 'package:sample/main.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageSlideshow(
              width: double.infinity,
              height: 200,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              autoPlayInterval: 3,
              isLoop: true,
              children: [
                Image.asset(
                  'assets/images/BackgroundImage.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/LogoTransparent.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/LogoTransparent.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Payments and Bills'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('a'),
                    Text('a'),
                    Text('a'),
                  ],
                )
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
