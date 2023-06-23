// ignore_for_file: avoid_print

import './user/fetchuserjson.dart';

const String path = r"Database\user\userpaymenthistory_2022.json";
String userid = 'ABC801';

main() {
  var data = userData(path, userid);

  return data;
}
