// ignore_for_file: avoid_print

import './user/fetchuserjson.dart';

/* 
const String path = r"Database\user\userpaymenthistory_2022.json";
String userid = 'ABC801'; */

main() {
  Map data = userData(
      path: r"Database\user\userpaymenthistory_2022.json", userid: 'ABC801');
  data = {"hello": 'bitch'};
  return data;
}
