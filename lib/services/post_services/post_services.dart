import 'dart:convert';

import 'package:league_app/core/service_injector.dart';
import 'package:league_app/model/post.dart';
import 'package:http/http.dart' as http;

class PostServices {
  Future<dynamic> getAllPost() async {
    String? apiKey = await si.localDataServices.getKey();
    String url = 'https://engineering.league.dev/challenge/api/posts';

    Map<String, String> headers = {'x-access-token': '$apiKey'};
    List<PostModel> postList = [];
    try {
      var response = await http
          .get(Uri.parse(url), headers: headers)
          .then((value) => jsonDecode(value.body));
      for (var item in response) {
        postList.add(PostModel.fromJson(item));
      }
    } catch (e) {
      null;
    }
    return postList;
  }
}
