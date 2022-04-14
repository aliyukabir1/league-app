import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginServices {
  Future<String> logIn() async {
    String baseUrl = 'https://engineering.league.dev/challenge/api/';

    try {
      var result = await http
          .get(Uri.parse('$baseUrl/login'))
          .then((value) => jsonDecode(value.body));

      return result['api_key'];
    } catch (e) {
      rethrow;
    }
  }
}
