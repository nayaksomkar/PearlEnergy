import 'package:http/http.dart' as http;

String jsonFileName = 'userpaymenthistory_2022.json';
String jsonFilePath = '/nayaksomkar/PearlEnergy/master/Database';

fetchCSVData() async {
  final url =
      Uri.https('raw.githubusercontent.com', '$jsonFilePath/$jsonFileName');
  final rawdata = await http.get(url);

  print(rawdata);
}
