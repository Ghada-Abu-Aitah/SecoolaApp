import 'dart:convert';
import 'api_settings.dart';
import 'package:http/http.dart' as http;
import 'models/main.dart';

class MainController {
  Future<List<Category>> getMain() async {
    Uri uri = Uri.parse(ApiSettings.main);
    var response = await http.get(uri);

    //print(response.statusCode);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var data = jsonResponse['data'] as List;
      return data.map((jsonObject) => Category.fromJson(jsonObject)).toList();
    }
    return [];
  }
}
