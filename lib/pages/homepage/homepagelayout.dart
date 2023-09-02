import 'package:flutter/material.dart';
import 'package:pearlenergy/main.dart';
import 'package:pearlenergy/pages/homepage/Payments_and_Ussage/paymenthistory.dart';
import 'package:pearlenergy/pages/homepage/Payments_and_Ussage/paymentstatus.dart';

import 'Manage Account/accountdetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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

                  const Text(
                    'Payments and Bills',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.amberAccent,
                      decoration: TextDecoration.underline,
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
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const PaymentHistoryPage();
                                  }));
                                },
                                icon: Image.asset(
                                  'assets/gif/PaymentHistory.gif',
                                  height: 100,
                                  width: 100,
                                )),
                          ),
                          Text(
                            'Payment History',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.7)),
                          )
                        ],
                      ),
                      const SizedBox(width: 110),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const PaymentStatusPage();
                                  }));
                                },
                                icon: Image.asset(
                                  'assets/gif/PaymentStatus.gif',
                                  height: 100,
                                  width: 100,
                                )),
                          ),
                          Text(
                            'Payment Status & Bill',
                            textAlign: TextAlign.center,
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
                    'Ussage and Consumption',
                    textAlign: TextAlign.center,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.amberAccent,
                      decoration: TextDecoration.underline,
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
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const PaymentHistoryPage();
                                  }));
                                },
                                icon: Image.asset(
                                  'assets/gif/UssageHistory.gif',
                                  height: 100,
                                  width: 100,
                                )),
                          ),
                          Text(
                            'Ussage History',
                            textAlign: TextAlign.center,
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
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: IconButton(
                              onPressed: () {
                                // Add your code here
                              },
                              icon: Image.asset(
                                'assets/gif/CurrentUssage.gif',
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          Text(
                            'Current Ussage',
                            textAlign: TextAlign.center,
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
                  // ignore: prefer_const_constructors
                  Text(
                    'Manage Account',
                    textAlign: TextAlign.center,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.amberAccent,
                      decoration: TextDecoration.underline,
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
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const AccountDetailsPage();
                                  }));
                                },
                                icon: Image.asset(
                                  'assets/gif/account.gif',
                                  height: 100,
                                  width: 100,
                                )),
                          ),
                          Text(
                            'Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.7)),
                          )
                        ],
                      ),
                      const SizedBox(width: 165),
                      LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          if (constraints.maxWidth > 600) {
                            // For desktop devices
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Center(
                                              child: Text(
                                                'WARNING',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            content: const Text(
                                                'YOU WILL BE REDIRECTED TO THE LOGIN PAGE.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return const MyApp();
                                                  }));
                                                },
                                                child: const Text('OK'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('CANCEL'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    icon: Image.asset(
                                      'assets/gif/logout.gif',
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Logout',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white.withOpacity(0.7)),
                                )
                              ],
                            );
                          } else if (constraints.maxWidth > 400) {
                            // For tablet devices
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 75,
                                  width: 75,
                                  child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Center(
                                              child: Text(
                                                'WARNING',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            content: const Text(
                                                'YOU WILL BE REDIRECTED TO THE LOGIN PAGE.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return const MyApp();
                                                  }));
                                                },
                                                child: const Text('OK'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('CANCEL'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    iconSize: 50,
                                    icon: Image.asset('assets/gif/logout.gif',
                                        height: 50, width: 50),
                                  ),
                                ),
                                Text(
                                  'Logout',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(0.7)),
                                )
                              ],
                            );
                          } else {
                            // For mobile devices
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Center(
                                              child: Text(
                                                'WARNING',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            content: const Text(
                                                'YOU WILL BE REDIRECTED TO THE LOGIN PAGE.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return const MyApp();
                                                  }));
                                                },
                                                child: const Text('OK'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('CANCEL'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    iconSize: 30,
                                    icon: Image.asset('assets/gif/logout.gif',
                                        height: 30, width: 30),
                                  ),
                                ),
                                Text(
                                  'Logout',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.7)),
                                )
                              ],
                            );
                          }
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
