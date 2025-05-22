import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: 'config/.env');
  WidgetsFlutterBinding.ensureInitialized();
  print(dotenv.env['API_KEY']);
  runApp(const Elpam());
}

class Elpam extends StatelessWidget {
  const Elpam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(body: Center(child: Text('Hello, Elpam!'))),
    );
  }
}
