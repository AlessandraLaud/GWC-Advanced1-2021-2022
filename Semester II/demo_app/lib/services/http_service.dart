import 'package:flutter/services.dart';
import 'package:demo_app/models/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpService {
  static Future<List<User>> fetchUsers() async {
    var response = await rootBundle.loadString("json/users.json");
    var data = json.decode(response)["data"];
    List<User> users = [];
    data.forEach((userData) => users.add(User.fromJson(userData)));

    return users;
  }

  static Future<List<User>> fetchUsersWithApi() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/?results=20'), headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response, then parse the JSON.
      var data = jsonDecode(response.body)["results"];
      List<User> users = [];
      data.forEach((userData) => users.add(User.fromJson(userData)));
      return users;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
