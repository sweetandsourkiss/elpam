import 'package:flutter/material.dart';
import 'package:mezet/features/home.dart';
import 'package:mezet/features/setting.dart';
import 'package:mezet/features/splash.dart';

class Mezet extends StatelessWidget {
  const Mezet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeZet',
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
