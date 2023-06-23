import 'dart:io';
import 'dart:convert';

const JsonDecoder decoder = JsonDecoder();

fetchData({required String path}) {
  var jsonString = File(path).readAsStringSync();
  final jsondata = decoder.convert(jsonString);

  return jsondata;
}
