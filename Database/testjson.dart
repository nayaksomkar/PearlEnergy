// ignore_for_file: avoid_print

import 'fetchjson.dart';

const String path = r"Database\user\userdetails.json";

void main() {
  var data = fetchData(path);
  print(data);
}