// ignore_for_file: avoid_print, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:http/http.dart' as http;
//import 'dart:convert';

/* const String url =
    'raw.githubusercontent.com/nayaksomkar/PearlEnergy/master/Database/userpaymenthistory_2022.json'; */
String jsonFileName = 'userpaymenthistory_2022.json';
String jsonFilePath = '/nayaksomkar/PearlEnergy/master/Database';

Future fetchJsonData({jsonFileName, jsoFilePath}) async {
  final url =
      Uri.https('raw.githubusercontent.com', '$jsonFilePath/$jsonFileName');
  final rawdata = await http.read(url);
  // final jsondata = json.decode(rawdata);
  //Map jsondata = rawdata;
  //print(jsondata['ABC801']['Jan']['ussage'].runtimeType);
  //print(jsondata['ABC801']['Jan']['ussage'].toString());
  //return jsondata;
  Map<String, dynamic> jsonData = {};
  var test = '';
 // jsonData.addAll(jsondata);
 // test = jsondata['ABC801']['Jan']['ussage'];
  print(jsonData);
  print(test);
}

void main() {
  var testdata;
  var jsondata =
      fetchJsonData(jsonFileName: jsonFileName, jsoFilePath: jsonFilePath);

  jsondata.then((value) {
    // print(value);
    //testdata = value;
  });

  //print(jsondata);
  //print(testdata);
}
