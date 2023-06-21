import 'dart:io';
import 'dart:convert';


const JsonDecoder decoder = JsonDecoder();

fetchData(path) {
  var jsonString = File(path).readAsStringSync();
  final jsondata = decoder.convert(jsonString);

  return jsondata;
}


