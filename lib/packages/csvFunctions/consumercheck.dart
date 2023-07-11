import 'package:http/http.dart' as http;

String csvFilePath =
    '/nayaksomkar/PearlEnergy/master/data/csv/user/accountDetails.csv';

chkUser() async {
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

  return {
    "ConsumerIDList": consumerIDList,
    "MobileNumberList": mobileNumberList
  };
}

void main() {
  chkUser().then((value) {
    if (value["ConsumerIDList"].contains('ABC821')) {
      print('found');
      var mobileNumber =
          value["MobileNumberList"][value["ConsumerIDList"].indexOf('ABC821')];
      mobileNumber = mobileNumber.substring(
        8,
      );
      print(mobileNumber);
    } else {
      print('not found');
    }
  });
}
