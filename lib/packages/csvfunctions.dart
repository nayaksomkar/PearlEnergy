import 'package:http/http.dart' as http;

String csvFilePath =
    '/nayaksomkar/PearlEnergy/master/data/csv/user/accountDetails.csv';

checkUser() async {
  List consumerIDList = [];
  List mobileNumberList = [];

  final urlAddress = Uri.https('raw.githubusercontent.com', '$csvFilePath');

  String urlData = await http.read(urlAddress);
  var tempData = urlData.split('\n');

  for (final elements in tempData) {
    final element = elements.split(',');

    if (element[0] != 'CONSUMER_ID') {
      //print(element[0]);
      consumerIDList.add(element[0]);
      mobileNumberList.add(element[1]);
    }
  }

  return consumerIDList;
}
