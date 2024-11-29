import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'pizza.dart';

class HttpHelper {
  final String authority = '6r4jr.wiremockapi.cloud'; 
  final String path = 'pizzalist';

  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    try {
      final http.Response result = await http.get(url);
      if (result.statusCode == HttpStatus.ok) {
        final List<dynamic> jsonResponse = json.decode(result.body);
        return jsonResponse.map<Pizza>((item) => Pizza.fromJson(item)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print('Exception: $e');
      return [];
    }
  }

  Future<String> postPizza(Pizza pizza) async {
    const postPath = '/pizza';
    String post = json.encode(pizza.toJson());
    Uri url = Uri.https(authority, postPath);
    try {
      http.Response response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: post,
      );
      if (response.statusCode == HttpStatus.ok || response.statusCode == 201) {
        return 'Pizza posted successfully!';
      } else {
        return 'Failed to post pizza: ${response.statusCode}';
      }
    } catch (e) {
      return 'Error posting pizza: $e';
    }
  }
}

