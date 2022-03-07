import 'dart:convert';

import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/model/userList.dart';
import 'package:http/http.dart' as http;

// Future submitUserDetails(Uri url, {Map<String, String> data}) async {
//   return http.post(
//     url,
//     headers: <String, String> {
//       'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
//     }
//     body: data
//   ). then((http.Response response) => {
//     final int statusCode = response.statusCode;
//     if (statusCode < 200 || statusCode > 400 || json == null) {
//       throw new Exception("Error while fetching data");
//     }
//     return Post.fromJson(json.decode(response.body));
//   });
// }

Future<List<UserLists>> getUsers() async {
  var response =
      await http.get(Uri.parse("https://gorest.co.in/public/v1/users"));
  return (json.decode(response.body)['data'] as List)
      .map((e) => UserLists.fromJson(e))
      .toList();
}
