import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/pearenergy_logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              DropdownButton(
                items: const [
                  DropdownMenuItem(
                    child: Text('Admin Login'),
                  ),
                  DropdownMenuItem(
                    child: Text('User Login'),
                  ),
                ],
                icon: const Icon(Icons.phone_outlined),
                onChanged: null,
                //tooltip: 'Contact Us',
                //onPressed: () {
                //  pa2();
              ),
              const IconButton(
                  icon: Icon(Icons.account_circle_outlined),
                  tooltip: 'Login',
                  onPressed: null),
            ],
          )
        ],
      ),
    );
  }
}




