import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(value: "2022", child: Text("2022")),
    const DropdownMenuItem(value: "2023", child: Text("2023")),
  ];
  return menuItems;
}

String dropdownvalue = "2022";