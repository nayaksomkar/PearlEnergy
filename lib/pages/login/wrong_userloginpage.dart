import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/pages/login/otppage.dart';


class WrongUserLoginPage extends StatelessWidget {
  const WrongUserLoginPage({Key? key, required this.title}) : super(key: key);
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
            TextField(
              decoration: const InputDecoration(
                  hintText: "Enter your number", border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OtpPage(title: 'OTP');
                }));
              },
              child: const Text(
                'Verify',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(''),
            const Text('Wrong Phone Number'),
          ],
        ),
      ),
    );
  }
}
