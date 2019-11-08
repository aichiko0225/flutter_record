import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

HttpClient httpClient = HttpClient();

Uri uri = Uri(
    scheme: "https",
    host: "flutterchina.club",
    queryParameters: {
      "xx":"xx",
      "yy":"dd"
    });


Future http() async {
  Dio dio = Dio();
  Response response = await dio.get('/test?id=12&name=wendu');
  print(response.data.toString());
}

var jsonStr = '[{"name":"Jack"},{"name":"Rose"}]';
List<Map> items = json.decode(jsonStr);
var name = items[0]["name"];

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json):
      name = json['name'],
      email = json['email'];

  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from({
      'name': name,
      'email': email
    });
  }
}

var jsonStr1 = '{"name": "John Smith","email": "john@example.com"}';
Map<String, dynamic> map = json.decode(jsonStr1);
var user = User.fromJson(map);

