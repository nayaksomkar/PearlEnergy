import 'package:flutter/material.dart';
import 'package:pearlenergy/pages/login/loginoption.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutTheProject extends StatelessWidget {
  const AboutTheProject({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                height: 80,
              ),
              const Text('"message"'),
              const SizedBox(
                height: 50,
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
                            launch(
                                'https://github.com/nayaksomkar/PearlEnergy');
                          },
                          icon: Image.asset(
                            'assets/gif/githublogo.gif',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Text(
                        'Check the Github repository',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, color: Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 75,
                        width: 75,
                        child: IconButton(
                          onPressed: () {
                            launch(
                                'https://github.com/nayaksomkar/PearlEnergy/blob/master/LICENSE');
                          },
                          icon: Image.asset(
                            'assets/images/OSIApproved.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Text(
                        'Read the OpenSource License',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, color: Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginOption(title: 'LoginOption');
                  }));
                },
                child: const Text(
                  'Return To Login Page',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Container(
  child: 
  ),
)

*/