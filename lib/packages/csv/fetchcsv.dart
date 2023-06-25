import 'package:http/http.dart' as http;
//import 'package:csv/csv.dart';

String jsonFileName = 'sample.csv';
String jsonFilePath = '/nayaksomkar/PearlEnergy/master/assets/csv/';

var data;
fetchCSVData() async {
  final url =
      Uri.https('raw.githubusercontent.com', '$jsonFilePath/$jsonFileName');
  //final rawdata =
  //final data  = csv.decode(rawdata.body);
  //print(rawdata);

  data = await http.read(url);

  return data;
}

main() async {
  data = await fetchCSVData();
  //data = data.split(",");
  data = data.split("\n");
  print(data.runtimeType);
}
