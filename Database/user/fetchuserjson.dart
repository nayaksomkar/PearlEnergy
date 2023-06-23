//used to so that compiler will ignore minor code problems.
// ignore_for_file: avoid_print

import '../fetchjson.dart';

Map fetchUserDetails(path) {
  final jsondata = fetchData(path);

  return jsondata;
}



Map checkUser(path, userid) {
  var data = fetchUserDetails(path);
  var booleanvalue = true;

  if (!data.containsKey(userid)) {
    booleanvalue = false;
  }

  return {"BooleanValue": booleanvalue, "UserId": userid, "JsonData": data};
}



Map userData(path, userid) {
  Map functiondata = checkUser(path, userid);
   // ignore: prefer_typing_uninitialized_variables
  var userdata;

  if (functiondata["BooleanValue"]) {
    userdata = functiondata['JsonData'][userid];
    print(userdata);
  }


  return userdata;
}
