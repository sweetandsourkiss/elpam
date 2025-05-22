import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_key.g.dart';

@riverpod
String helloWorld(Ref ref) {
  return dotenv.env['API_KEY']!;
}
