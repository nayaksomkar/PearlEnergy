// ignore_for_file: avoid_print

import 'fetchuserjson.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
/* 
const String path = r"Database\user\userpaymenthistory_2022.json";
String userid = 'ABC801'; */

const url =
    "https://raw.githubusercontent.com/nayaksomkar/PearlEnergy/master/Database/user/userpaymenthistory_2022.json";

// ignore: camel_case_types
class jsonuserdata {
  String ussage = '', bill = '', paidon = '';

  jsonuserdata(this.ussage, this.bill, this.paidon);
}

main() async {
/*   Map data = userData(
      path: r"Database\user\userpaymenthistory_2022.json", userid: 'ABC801');

  return data; */

  // ignore: unused_local_variable
  var response = await http.get(url as Uri);
  List<jsonuserdata> alldata = [];
  if (response.statusCode == 200) {
    String responseBody = response.body;
    var jsonBody = json.decode(responseBody);
    for (var data in jsonBody) {
     // alldata.add(new jsonuserdata(ussage, bill, paidon));
    }
  } else {
    print('error');
  }
}
