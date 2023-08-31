import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sample/pages/login/loginoption.dart';

class NewUserPage extends StatelessWidget {
  const NewUserPage({Key? key, required this.title}) : super(key: key);
  final String title;

  _sendMailToPearlEnergy() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'contact@pearl.energy',
      query: 'subject=Inquiry from New User',
    );
    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'Could not launch $params';
    }
  }

  _callPearlEnergy() async {
    final Uri params = Uri(scheme: 'tel', path: '805-509');
    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'Could not launch $params';
    }
  }

  _sendMessageToPearlEnergy() async {
    final Uri params = Uri(scheme: 'sms', path: '805-509');
    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'Could not launch $params';
    }
  }

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
              const Text(
                  "For site verification and connectiongive us a call or Email."),
              const SizedBox(
                height: 50,
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
              const SizedBox(
                height: 10,
              ),
              const Text('Contact us via'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: IconButton(
                          onPressed: () {
                            // Add your code here
                          },
                          icon: Image.asset(
                            'assets/gif/email.gif',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Text(
                        'Send us an email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, color: Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: IconButton(
                          onPressed: () {
                            // Add your code here
                          },
                          icon: Image.asset(
                            'assets/gif/phone.gif',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Text(
                        'Give us a call',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, color: Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: IconButton(
                          onPressed: () {
                            // Add your code here
                          },
                          icon: Image.asset(
                            'assets/gif/message.gif',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Text(
                        'Send us a message',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, color: Colors.white.withOpacity(0.7)),
                      )
                    ],
                  )
                ],
              )
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