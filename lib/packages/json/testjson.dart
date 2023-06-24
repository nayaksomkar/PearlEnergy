// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';
/* 
const String path = r"Database\user\userpaymenthistory_2022.json";
String userid = 'ABC801'; */

// ignore: camel_case_types
class jsonuserdata {
  String ussage = '', bill = '', paidon = '';

  jsonuserdata(this.ussage, this.bill, this.paidon);
}

defhj() async {
/*   Map data = userData(
      path: r"Database\user\userpaymenthistory_2022.json", userid: 'ABC801');

  return data; */
  String url =
      "https://raw.githubusercontent.com/nayaksomkar/PearlEnergy/master/Database/user/userpaymenthistory_2022.json";
  // ignore: unused_local_variable
  var response = await http.get(Uri.parse(url));
  // ignore: unused_local_variable
  List<jsonuserdata> alldata = [];
  if (response.statusCode == 200) {
    String responseBody = response.body;
    var jsonBody = json.decode(responseBody);

    print(jsonBody['ABC801']['Jan']['ussage'].runtimeType);
    return jsonBody['ABC801']['Jan']['ussage'];
  } else {
    print('error');
  }
}
