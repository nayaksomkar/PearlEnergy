import 'dart:convert';
//import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as root_bundle;



 
class ReadJsonFile {
  static Future<Map> readJsonData({required String path}) async {
    // read json file
    final jsondata = await root_bundle.rootBundle.loadString(path);

    // decode json data as list
    final list = json.decode(jsondata) as Map;

    // map json and initialize
    // using DataModel
    return list;
  }
}
