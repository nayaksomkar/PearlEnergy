import 'dart:io';
import 'dart:convert';

const String path = r"Database\PearlEnergyData.json";
const JsonDecoder decoder = JsonDecoder();

void main() {
  //List eMP;
  //synchronously read file contents
  var jsonString = File(path).readAsStringSync();
  //print(jsonString);
  //pass the read string to JsonDecoder class to convert into corresponding Objects
  final Map<String, dynamic> jsonmap = decoder.convert(jsonString);

  print(jsonmap['userdetails']);
}
