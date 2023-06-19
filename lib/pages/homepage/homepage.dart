import 'package:flutter/material.dart';
import 'package:sample/main.dart';

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
                const Image(
                  image: AssetImage(
                    'assets/images/IconTransparent.png',
                  ),
                  height: 200,
                  width: 200,
                ),
                Text('Payments and Bills'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.payments_rounded,
                              size: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Payment History')
                      ],
                    ),
                    SizedBox(width: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.price_check_rounded,
                              size: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Payment Status')
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Ussage and Consumption'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.history_edu_rounded,
                              size: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Ussage History')
                      ],
                    ),
                    SizedBox(width: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.stacked_bar_chart_rounded,
                              size: 50,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Current Ussage')
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Manage Account'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.abc,
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Elemenet_1')
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.abc,
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Elemenet_1')
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.abc,
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Elemenet_1')
                      ],
                    ),
                  ],
                ),
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
