import 'package:http/http.dart' as http;

String csvFilePath =
    '/nayaksomkar/PearlEnergy/master/data/csv/user/accountDetails.csv';

checkUser() async {
  List tempList = [];
  String data;

  final url = Uri.https('raw.githubusercontent.com', '$csvFilePath');

  data = await http.read(url);
  var temp = data.split('\n');

  for (final elements in temp) {
    final element = elements.split(',');

    if (element[0] != 'CONSUMER_ID') {
      //print(element[0]);
      tempList.add(element[0]);
    }
  }

  return tempList;
}