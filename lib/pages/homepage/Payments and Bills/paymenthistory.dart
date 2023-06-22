import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(value: "USA", child: Text("USA")),
    const DropdownMenuItem(value: "Canada", child: Text("Canada")),
    const DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
    const DropdownMenuItem(value: "England", child: Text("England")),
  ];
  return menuItems;
}

String selectedValue = 'USA';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Text('leleo bro'),
                DropdownButton(
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const PaymentHistory();
                      }));
                    },
                    items: dropdownItems)
              ],
            )
          ],
        ),
      ),
    );
  }
}
