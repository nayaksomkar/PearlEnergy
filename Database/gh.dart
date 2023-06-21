import 'dart:io';
import 'dart:convert';

const String path = r"assets\Database\test.json";
const JsonDecoder decoder = JsonDecoder();

void main() {
  List<UserDetails>? eMP;
  //synchronously read file contents
  var jsonString = File(path).readAsStringSync();
  //print(jsonString);
  //pass the read string to JsonDecoder class to convert into corresponding Objects
  final Map<String, dynamic> jsonmap = decoder.convert(jsonString);

  //DataModel - key = "users", value = "ARRAY of Objects"
  var value = jsonmap["users"];
  if (value != null) {
    eMP = <UserDetails>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    value.forEach((item) => eMP?.add(UserDetails(
        id: item["id"], user: item["user"], password: item["password"])));
  }
  eMP?.forEach((element) => print(element));
}

class UserDetails {
  int? id;
  String? user;
  String? password;

  //{ } - implies named arguments
  UserDetails({this.id, this.user, this.password});

  @override
  String toString() {
    return "{id:$id,user:$user,password:$password}";
  }
}
