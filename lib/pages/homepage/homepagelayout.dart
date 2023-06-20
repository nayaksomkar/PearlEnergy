import 'package:flutter/material.dart';
import 'package:sample/main.dart';
import 'Payments and Bills/paymenthistory.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
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
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Payments and Bills\n___________________',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const PaymentHistory(
                                    title: 'Admin Login');
                              }));
                            },
                            icon: const Icon(
                              Icons.payments_rounded,
                              size: 40,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '     Payment History',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7)),
                        )
                      ],
                    ),
                    const SizedBox(width: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.price_check_rounded,
                              size: 40,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '    Payment Status',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Ussage and Consumption\n__________________________',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.history_edu_rounded,
                              size: 40,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Ussage History',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7)),
                        )
                      ],
                    ),
                    const SizedBox(width: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.stacked_bar_chart_rounded,
                              size: 40,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Current Ussage',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Manage Account\n_________________',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person_2_rounded,
                              size: 40,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '   Account',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7)),
                        )
                      ],
                    ),
                    const SizedBox(width: 145),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const MyApp();
                              }));
                            },
                            icon: const Icon(
                              Icons.login_rounded,
                              size: 40,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '       Logout',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7)),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
