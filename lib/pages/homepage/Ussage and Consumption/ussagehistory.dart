// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../yearlist.dart';

class UssageHistoryPage extends StatefulWidget {
  const UssageHistoryPage({Key? key}) : super(key: key);

  @override
  _UssageHistoryPageState createState() => _UssageHistoryPageState();
}

class _UssageHistoryPageState extends State<UssageHistoryPage> {
// Initial Selected Value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Select Year : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: dropdownItems,
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
