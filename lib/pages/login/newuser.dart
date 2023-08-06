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
                  "For site verification and connection, book an appointment now."),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Contact your nearest Pearl Energy office or give us a call or Email."),
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
              TextButton(
                onPressed: _sendMailToPearlEnergy,
                child: const Text(
                  'Mail to us at "contact@pearl.energy"',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: _callPearlEnergy,
                child: const Text(
                  'Give us a Call at "805-509"',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: _sendMessageToPearlEnergy,
                child: const Text(
                  'Send us a Message at "805-509"',
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
