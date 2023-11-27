import 'dart:convert';
import 'package:faziltask/api_sample.dart/api_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UserModel>> getUsers(
      {int results = 10, String gender = 'male'}) async {
    final Uri uri =
        Uri.parse('https://randomuser.me/api/?results=$results&gender=$gender');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> results = data['results'];

      return results.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
