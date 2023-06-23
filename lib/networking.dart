import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    Response response = await get(url);
    String data = response.body;

    return jsonDecode(data);

    // print(data);
  }
}
