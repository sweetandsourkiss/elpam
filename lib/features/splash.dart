import 'package:elpam/providers/apis/ocid.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late final SharedPreferencesWithCache _prefs;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    load();
  }

  void save() async {
    if (_controller.text != '') {
      String ocid = await getOcid(_controller.text);
      _prefs.setString('ocid', ocid);
      print(ocid);
    }
  }

  void load() async {
    _prefs = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'ocid'},
      ),
    );
    // print(_prefs.getString('ocid'));
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
              onEditingComplete: save,
              decoration: InputDecoration(
                hintText: '닉네임을 입력하세요.',
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
