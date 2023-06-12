import 'package:flutter/material.dart';
import 'package:pearl_energy/widgets/navigation_bar/center_view/center_view.dart';
import 'package:pearl_energy/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [NavBar()],
          ),
        ));
  }
}
