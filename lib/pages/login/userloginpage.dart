import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pearlenergy/main.dart';
import 'package:pearlenergy/packages/csvfunctions.dart';
import 'package:pearlenergy/pages/login/newuser.dart';
import 'package:pearlenergy/pages/login/otpPage.dart';
import 'package:pearlenergy/pages/nointernet.dart';

String consumerID = '';
String mobileNumber = '';

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
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
                ],
                onChanged: (value) {
                  if (value.length == 6) {
                    FocusScope.of(context).nextFocus();
                    consumerID = value;

                    checkUser().then((value) {
                      if (value["ConsumerIDList"].contains(consumerID)) {
                        var mobileNumber = value["MobileNumberList"]
                            [value["ConsumerIDList"].indexOf(consumerID)];

                        mobileNumber = mobileNumber.substring(8);
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
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {
                  checkUser().then((userDetailsMap) {
                    if (consumerID.length == 6) {
                      if (userDetailsMap["ConsumerIDList"]
                          .contains(consumerID)) {
                        var mobileNumber = userDetailsMap["MobileNumberList"][
                            userDetailsMap["ConsumerIDList"]
                                .indexOf(consumerID)];

                        mobileNumber = mobileNumber.substring(8);
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
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const NoInternetPage();
                      }));
                    }
                  });
                },
                child: const Text(
                  'Verify',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const NewUserPage(
                      title: 'New User',
                    );
                  }));
                },
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "Don't have an account yet?",
                        style: TextStyle(fontSize: 15),
                      ),
                      TextSpan(
                        text: "  New User?",
                        style: TextStyle(color: Colors.amber, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyApp();
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
