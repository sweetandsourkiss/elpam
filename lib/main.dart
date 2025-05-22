import 'package:elpam/%08elpam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await dotenv.load(fileName: 'config/.env');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const Elpam()));
}
