import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan3/app/model/user_model.dart';

class HomeController extends GetxController {
  Future<UserModel> fetchTodos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
