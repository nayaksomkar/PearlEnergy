import 'package:sample/packages/json/user/fetchuserjson.dart';

var year = "2022";

Map jsondata = userData(
    path: r"Database\user\userpaymenthistory_2022.json", userid: 'ABC801');
String Ussage = jsondata['Jan']['ussage'];
String janUssage = "$Ussage";
main() {
  print(jsondata['Jan']['ussage']);
  var e = jsondata['Jan']['ussage'];
  print(jsondata);
  print(e.runtimeType);
  print(janUssage);
}
