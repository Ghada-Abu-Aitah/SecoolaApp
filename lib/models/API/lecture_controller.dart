import 'dart:convert';
import 'package:secoola/models/API/models/lecture.dart';
import 'api_settings.dart';
import 'package:http/http.dart' as http;


class LectureController {
  Future<List<Lecture>> getLecture() async {
    Uri uri = Uri.parse(ApiSettings.lecture);
    var response = await http.get(uri);

    //print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var data = jsonResponse['data'] as List;
      return data.map((jsonObject) => Lecture.fromJson(jsonObject)).toList();
    }
    return [];
  }
}
