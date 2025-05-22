import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final TextEditingController _controller = TextEditingController();
  String _name = "";

  @override
  void initState() {
    super.initState();
    load();
  }

  void load() async {
    final SharedPreferencesWithCache _prefs =
        await SharedPreferencesWithCache.create(
          cacheOptions: const SharedPreferencesWithCacheOptions(
            allowList: <String>{'ocid'},
          ),
        );
    print(_prefs.getString('ocid'));
    // _prefs.setString(
    //   'ocid',
    //   '6f49580061c28f43bf2c2be1f7be8fceefe8d04e6d233bd35cf2fabdeb93fb0d',
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              autocorrect: false,
              keyboardType: TextInputType.name,
              onEditingComplete: () {},
              decoration: InputDecoration(
                hintText: '닉네임',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
