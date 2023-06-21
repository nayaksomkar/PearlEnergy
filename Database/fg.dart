import 'dart:io';
import 'dart:convert';

const String path = r"Database\test.json";
const JsonDecoder decoder = JsonDecoder();

class USER {
  int? id;
  String? user;
  String? password;

  //{ } - implies named arguments
  USER({this.id, this.user, this.password});

  @override
  String toString() {
    return "{id:$id,user:$user,password:$password}";
  }
}

void main() {
  List<USER>? eMP;
  //synchronously read file contents
  var jsonString = File(path).readAsStringSync();
  //print(jsonString);
  //pass the read string to JsonDecoder class to convert into corresponding Objects
  final Map<String, dynamic> jsonmap = decoder.convert(jsonString);

  //DataModel - key = "users", value = "ARRAY of Objects"
  var value = jsonmap["users"];
  if (value != null) {
    eMP = <USER>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    value.forEach((item) => eMP?.add(new USER(
        id: item["id"], user: item["user"], password: item["password"])));
  }
  eMP?.forEach((element) => print(element));
}
