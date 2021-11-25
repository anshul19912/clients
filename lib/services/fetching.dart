import 'package:clients/models/clients.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<UsersList> userdata() async {
  var url =
      Uri.parse('https://run.mocky.io/v3/f3feef1c-9bfa-43fd-b2a0-bbe9abadb4f6');
  http.Response response = await http.get(url);
  return UsersList.fromMap(json.decode(response.body));
}
