import 'package:flutter_dotenv/flutter_dotenv.dart';

Map<String, String> commonHeader = {
  "Conten-Type": "application/json",
  "X-Nxopen-Api-Key": dotenv.env['API_KEY']!,
};
