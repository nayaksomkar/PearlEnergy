import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets.logo.jpg'),
          ),

          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem(title: 'Episodes',),
              SizedBox(width: 60,),
              _NavBarItem(title: 'About'),
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
