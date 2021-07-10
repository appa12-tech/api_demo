import 'dart:convert';

import 'package:api_demo/constant/constant.dart';
import 'package:api_demo/models/post.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future<List<Post>> getPost() async {
    List<Post> postList = [];
    var url = Uri.parse(POST_URL);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      result.forEach((f) {
        var post = Post.fromJson(f);
        postList.add(post);
      });
    } else {
      print('Error' + response.statusCode.toString());
    }
    return postList;
  }

  static Future<void> sendPost() async {
    try {
      var url = Uri.parse(POST_URL);
      var response = await http.post(url,
          body: {'title': 'Hello', 'body': 'Body here', "userId": "1"});
      if (response.statusCode == 201) {
        print('Data sent successfully');
      } else {
        print('Something went wrong');
      }
    } catch (er) {}

    // print(await http.read('https://example.com/foobar.txt'));
  }

  static Future<void> updateAlbum(String title) async {
    final response = await http.put(
      Uri.parse("$POST_URL/1"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    if (response.statusCode == 200) {
      print('Data deleted successfully');
    } else {
      print('Something went wrong');
    }
  }

  static Future<void> deleteAlbum(String id) async {
    final http.Response response = await http.delete(
      Uri.parse("$ALBUM_DELETE_URL/1"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      print('Data deleted successfully');
    } else {
      print('Something went wrong');
    }
  }
}
