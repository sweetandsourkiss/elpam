import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mezet/constants/headers.dart';
import 'package:mezet/constants/strings.dart';
import 'package:mezet/models/character/basic/basic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'character.g.dart';

@riverpod
Future<Basic> characterBasic(Ref ref, String ocid) async {
  final uri = Uri.https(authority, '/maplestory/v1/character/basic', {
    'ocid': ocid,
  });
  final response = await http.get(uri, headers: commonHeader);
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Basic.fromJson(json);
}
