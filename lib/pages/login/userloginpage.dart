import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/packages/csvfunctions.dart';
import 'package:sample/pages/login/loginoption.dart';
import 'package:sample/pages/login/otpPage.dart';
import 'package:sample/pages/nointernet.dart';

late String consumerID;
String mobileNumber = '780';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({Key? key, required this.title}) : super(key: key);
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
            TextField(
              maxLength: 6,
              decoration: InputDecoration(
                  labelText: 'Consumer ID',
                  helperText: "Enter your unique Consumer ID",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
              ], // Only numbers can be entered
              onChanged: (value) {
                if (value.length == 6) {
                  FocusScope.of(context).nextFocus();
                  consumerID = value;

                  checkUser().then((value) {
                    if (value["ConsumerIDList"].contains(consumerID)) {
                      var mobileNumber = value["MobileNumberList"]
                          [value["ConsumerIDList"].indexOf('ABC821')];

                      mobileNumber = mobileNumber.substring(
                        8,
                      );
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return OtpPage(
                          title: 'Home Page',
                          phoneNumber: mobileNumber,
                        );
                      }));
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const NoInternetPage();
                      }));
                    }
                  });
                }
              },
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OtpPage(
                    title: 'Home Page',
                    phoneNumber: mobileNumber,
                  );
                }));
              },
              // ignore: prefer_const_constructors
              child: Text(
                'Verify',
                // ignore: prefer_const_constructors
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginOption(title: 'LoginOption');
                }));
              },
              // ignore: prefer_const_constructors
              child: Text(
                'Return To Login Page',
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
