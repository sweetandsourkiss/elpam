import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mezet/constants/headers.dart';
import 'package:mezet/constants/strings.dart';

Future<String> getOcid(String name) async {
  final uri = Uri.https(authority, '/maplestory/v1/id', {
    'character_name': name,
  });
  final response = await http.get(uri, headers: commonHeader);
  Map<String, dynamic> map = jsonDecode(response.body);
  if (map != Null) {
    return map['ocid'];
  } else {
    return 'Error';
  }
}
