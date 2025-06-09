import 'package:elpam/providers/apis/ocid.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final TextEditingController _controller = TextEditingController();
  late final SharedPreferencesWithCache _prefs;

  @override
  void initState() {
    super.initState();
    load();
  }

  void save() async {
    if (_controller.text != '') {
      String ocid = await getOcid(_controller.text);
      _prefs.setString('ocid', ocid);
      Navigator.of(context).pushNamed('/home');
    } else {
      // 닉네임 입력 alert
    }
  }

  void load() async {
    _prefs = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'ocid'},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                controller: _controller,
                autocorrect: false,
                onEditingComplete: save,
                decoration: InputDecoration(
                  hintText: '닉네임을 입력하세요.',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade400),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            OutlinedButton(onPressed: save, child: Text("Confirm")),
          ],
        ),
      ),
    );
  }
}
