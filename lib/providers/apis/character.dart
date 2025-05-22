import 'dart:convert';
import 'package:elpam/constants/headers.dart';
import 'package:elpam/constants/strings.dart';
import 'package:elpam/models/character/basic/basic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'character.g.dart';

@riverpod
Future<Basic> characterBasic(Ref ref) async {
  final uri = Uri.https(authority, '/maplestory/v1/character/basic', {
    'ocid': "6f49580061c28f43bf2c2be1f7be8fceefe8d04e6d233bd35cf2fabdeb93fb0d",
  });
  final response = await http.get(uri, headers: commonHeader);
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Basic.fromJson(json);
}
