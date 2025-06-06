import 'dart:convert';

import 'package:elpam/constants/headers.dart';
import 'package:elpam/constants/strings.dart';
import 'package:http/http.dart' as http;

Future<String> getOcid(String name) async {
  final uri = Uri.https(authority, '/maplestory/v1/id', {
    'character_name': name,
  });
  final response = await http.get(uri, headers: commonHeader);
  Map<String, dynamic> map = jsonDecode(response.body);

  return map['ocid'];
}
