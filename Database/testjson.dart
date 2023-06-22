// ignore_for_file: avoid_print

import './user/fetchuserjson.dart';

const String path = r"Database\user\userdetails.json";
String userid = 'ABC801';

main() {
  var data = userDetails(path, userid);

  return data;
}
