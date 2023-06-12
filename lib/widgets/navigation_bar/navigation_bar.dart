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
              IconButton(
                  icon: Icon(Icons.phone_outlined),
                  tooltip: 'Contact Us',
                  onPressed: () {
                    pa2();
                  }),
                  
              IconButton(
                  icon: Icon(Icons.account_circle_outlined),
                  tooltip: 'Login',
                  onPressed: () {
                    pa2();
                  }),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void pa2() {
  print(10);
}

