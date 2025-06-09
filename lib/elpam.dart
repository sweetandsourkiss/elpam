import 'package:elpam/features/home.dart';
import 'package:elpam/features/setting.dart';
import 'package:elpam/features/splash.dart';
import 'package:flutter/material.dart';

class Elpam extends StatelessWidget {
  const Elpam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elpam',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      routes: {
        '/home': (context) => Home(),
        '/setting': (context) => Setting(),
      },
      home: Scaffold(body: Splash()),
    );
  }
}
