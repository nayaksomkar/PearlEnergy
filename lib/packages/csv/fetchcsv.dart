import 'package:http/http.dart' as http;
//import 'package:csv/csv.dart';

String csvFileName = 'sample.csv';
String csvFilePath = '/nayaksomkar/PearlEnergy/master/assets/csv/';

fetchCSVData() async {
  String data;
  final url =
      Uri.https('raw.githubusercontent.com', '$csvFilePath/$csvFileName');

  data = await http.read(url);
  //print(data);
  //print(data.runtimeType);
  //print(data.split('\n'));
  //print(data);
  var temp = data.split('\n');
  //print(data.split('\n'));
  // print(data);
  //var temp = data.split('\n');
  var row = temp[0];
  var rowele = row.split(',');
  print(rowele[0]);

  //return temp_data;
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
