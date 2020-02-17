import 'dart:async' show Future;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app_name/provaiders/dataProvaider.dart';


class Service {
  static const String url = 'https://app-nombre.firebaseio.com/masculino.json';
 
  static Future<List<Name>> getName() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Name> list = parseUsers(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
 
  static List<Name> parseUsers(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Name>((json) => Name.fromJson(json)).toList();
  }
}
