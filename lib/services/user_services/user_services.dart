import 'dart:convert';

import 'package:league_app/core/service_injector.dart';

import 'package:http/http.dart' as http;
import 'package:league_app/model/user.dart';

class UserServices {
  Future<dynamic> getAllUsers() async {
    String? apiKey = await si.localDataServices.getKey();
    String url = 'https://engineering.league.dev/challenge/api/users';

    Map<String, String> headers = {'x-access-token': '$apiKey'};
    List<UserModel> userList = [];
    try {
      var response = await http
          .get(Uri.parse(url), headers: headers)
          .then((value) => jsonDecode(value.body));
      for (var item in response) {
        userList.add(UserModel.fromJson(item));
      }
    } catch (e) {
      null;
    }
    return userList;
  }
}
