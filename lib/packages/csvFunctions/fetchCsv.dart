// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
//import 'package:csv/csv.dart';

String csvFileName = 'pearlenergy.csv';
String csvFilePath = '/nayaksomkar/PearlEnergy/master/assets/csv/';

fetchCSVData() async {
  List tempList = [];
  String data;
  final url =
      Uri.https('raw.githubusercontent.com', '$csvFilePath/$csvFileName');

  data = await http.read(url);
  var temp = data.split('\n');
  /* var row = temp[0];
  var rowele = row.split(',');
  print(rowele[0]); */

  for (final elements in temp) {
    final element = elements.split(',');
    // print(element);
    tempList.add(element);
  }
  print('');
  print(tempList);
  print('');
  print(tempList[0]);
  print('');
  print(tempList[0][0]);
}

main() {
  //var rec = collectcsv();
  fetchCSVData();

  //print(rec);
}

collectcsv() async {
  List<List<String>> tempList = [];
  var records = await fetchCSVData();
  //data = data.split(",");
  records = records.split("\n");
  //data = data[3].split(',');
  //print(data);

  for (var data in records) {
    if (data.length > 0) {
      var value = data.split("\n");
      tempList.add(value);
    }
  }
  //print(tempList);
  return tempList[0].toList();
}
