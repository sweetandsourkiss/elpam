import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SharedPreferencesWithCache? _prefs;

  @override
  void initState() {
    super.initState();
    load();
  }

  void load() async {
    _prefs = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'ocid'},
      ),
    );
    String? ocid = _prefs!.getString('ocid');
    if (ocid != null && ocid != '') {
      Navigator.pushNamed(context, '/home');
    } else {
      Navigator.pushNamed(context, '/setting');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}
