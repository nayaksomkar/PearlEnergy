// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';

/* const String url =
    'raw.githubusercontent.com/nayaksomkar/PearlEnergy/master/Database/userpaymenthistory_2022.json'; */
String jsonFileName = 'userpaymenthistory_2022.json';
String jsonFilePath = '/nayaksomkar/PearlEnergy/master/Database';

class PaymentHistoryJson {
  final String month;
  //final String ussage;
  final String bill;
  final String paymentDate;

  PaymentHistoryJson({
    required this.month,
    required this.bill,
    required this.paymentDate,
  });

  factory PaymentHistoryJson.fromJson(Map<String, dynamic> json) {
    //final jsondata = json[''];

    return PaymentHistoryJson(
        month: json['ABC001']['Jan']['ussage'],
        bill: json['ABC001']['Jan']['bill'],
        paymentDate: json['ABC001']['Jan']['paymentDate']);
  }
}

Future<PaymentHistoryJson> fetchJsonData({jsonFileName, jsoFilePath}) async {
  final url =
      Uri.https('raw.githubusercontent.com', '$jsonFilePath/$jsonFileName');
  final rawdata = await http.get(url);
  final PaymentHistoryJson jsondata = json.decode(rawdata.body);
  //fatBitch = jsondata;
  print(jsondata);
  return jsondata;
}

void main() async {
  var fatBitch =
      fetchJsonData(jsonFileName: jsonFileName, jsoFilePath: jsonFilePath);
  print(fatBitch);
}
