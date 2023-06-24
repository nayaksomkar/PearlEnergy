//used to so that compiler will ignore minor code problems.
// ignore_for_file: avoid_print

import '../fetchjson.dart';


Map fetchUserDetails({required String path}) {
  final jsondata = fetchData(path: path);

  return jsondata;
}

Map checkUser({required String path, required String userid}) {
  var jsondata = fetchUserDetails(path: path);
  var booleanvalue = true;

  if (!jsondata.containsKey(userid)) {
    booleanvalue = false;
  }

  return {
    "BooleanValue": booleanvalue,
    "UserId": userid,
    "JsonData": jsondata[userid]
  };
}

Map userData({required String path, required String userid}) {
  Map functiondata = checkUser(path: path, userid: userid);
  // ignore: prefer_typing_uninitialized_variables
  var userdata;

  if (functiondata["BooleanValue"]) {
    userdata = functiondata['JsonData'];
  }

  return userdata;
}

