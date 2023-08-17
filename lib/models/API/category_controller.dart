import 'dart:convert';
import 'package:secoola/models/API/models/category.dart';
import 'package:http/http.dart' as http;
import 'api_settings.dart';

class CategoryController {
  Future<List<MyCategory>> getCategory() async {
    Uri uri = Uri.parse(ApiSettings.category);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var data = jsonResponse['data'] as List;
      return data.map((jsonObject) => MyCategory.fromJson(jsonObject)).toList();
    }
    return [];
  }
}
