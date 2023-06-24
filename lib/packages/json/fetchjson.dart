// ignore_for_file: avoid_print

//import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

//const JsonDecoder decoder = JsonDecoder();

/* fetchData({required String path}) {
  var jsonString = File(path).readAsStringSync();
  final jsondata = decoder.convert(jsonString);

  return jsondata;
}
 */

const String url =
    'https://raw.githubusercontent.com/nayaksomkar/PearlEnergy/master/Database/userpaymenthistory_2022.json';

class PaymentHistoryJson {
  late String ussage;
  late String bill;
  late String paidOn;

  PaymentHistoryJson(this.ussage, this.bill, this.paidOn);
}

fetchJsonData({required String userid}) async {
  var response =
      await http.get(Uri.parse(url), headers: {"Accept": "application/json"});

  if ((response.statusCode != 404) && (response.statusCode != 502)) {
    if (response.statusCode == 200) {
      String resposeBody = response.body;
      var jsonBody = json.decode(resposeBody);
      //print(jsonBody[userid]['Jan']['ussage']);
      //print(jsonBody[userid]['Jan']['ussage'].runtimeType);

      return {"BooleanValue": true, "body": jsonBody};
    }
  } else {
    print('Error');
    return {"BooleanValue": null};
  }
}

fetchPaymentHistory() {}
