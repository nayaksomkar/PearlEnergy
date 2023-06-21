import 'dart:io';
import 'dart:convert';

const String path = r"Database\user\userdetails.json";
const JsonDecoder decoder = JsonDecoder();

void main() {
  var data = fetchData(path);
  print(data);
}

fetchData(path) {
  var jsonString = File(path).readAsStringSync();
  final jsondata = decoder.convert(jsonString);

  return jsondata;
}


