//import 'dart:convert';
//import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_datagrid/datagrid.dart';
//import 'package:intl/intl.dart';
//import 'package:sample/packages/user/fetchuserjson.dart';
import 'package:sample/packages/json/fetchuserjson.dart';
import 'package:sample/packages/json/testjson.dart';

var year = "2022";

Map jsondata = userData(
    path: r"Database\user\userpaymenthistory_2022.json", userid: 'ABC801');

List<String> bell = ['jan', 'ussage', 'paidon'];

main() {
/*   print(jsondata['Jan']['ussage']);
  var e = jsondata['Jan']['ussage'];
  print(jsondata);
  print(e.runtimeType);
  //print(janUssage); */

  String df = defhj();
  // ignore: avoid_print
  print(df.runtimeType);
}

String df = defhj();
