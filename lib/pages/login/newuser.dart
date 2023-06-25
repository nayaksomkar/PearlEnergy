import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/pages/login/loginoption.dart';
import 'package:sample/pages/login/otppage.dart';
import 'package:sample/pages/login/wrong_userloginpage.dart';

import '../../../main.dart';

class NewUserPage extends StatelessWidget {
  const NewUserPage({Key? key, required this.title}) : super(key: key);
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
            const Text(
                "For site verification and connection Book an appointment now."),
            const SizedBox(
              height: 5,
            ),
            const Text(
                "Contact your nearest Pearl Energy office or give us a call or Email."),
            const SizedBox(
              height: 50,
            ),
            const Text('Contact details'),
            const SizedBox(
              height: 20,
            ),
            const Text('Tollfree Helpline Number  :  805-509'),
            const SizedBox(
              height: 20,
            ),
            const Text('Leave us an Email at pearl@energy.help'),
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
            )
          ],
        ),
      )),
    );
  }
}
