import 'package:elpam/models/character/basic/basic.dart';
import 'package:elpam/news_data.dart';
import 'package:elpam/providers/apis/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:home_widget/home_widget.dart';

const String androidWidgetName = 'CharImageAppWidget';

void updateHeadline(NewsArticle newHeadline) {
  // Add from here
  // Save the headline data to the widget
  HomeWidget.saveWidgetData<String>('headline_title', newHeadline.title);
  HomeWidget.saveWidgetData<String>(
    'headline_description',
    newHeadline.description,
  );
  HomeWidget.updateWidget(
    // iOSName: iOSWidgetName,
    androidName: androidWidgetName,
  );
}

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  SharedPreferencesWithCache? _prefs;
  int count = 0;

  @override
  void initState() {
    super.initState();
    load();
    update();
  }

  void load() async {
    _prefs = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'ocid'},
      ),
    );
    String? ocid = _prefs!.getString('ocid');
    if (ocid == null || ocid == "") {
      Navigator.pushNamed(context, '/setting');
      return;
    }
    setState(() {});
  }

  void update() {
    print("hello");
    // HomeWidget.setAppGroupId(appGroupId);

    // Mock read in some data and update the headline
    // final newHeadline = getNewsStories()[0];
    count = count + 1;
    final newHeadline = NewsArticle(
      title: 'title$count',
      description: 'description$count',
    );
    updateHeadline(newHeadline);

    setState(() {});
  }

  void reset() async {
    _prefs!.clear();
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/setting',
      ModalRoute.withName('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (_prefs == null) {
      return CircularProgressIndicator();
    }
    String? ocid = _prefs!.getString('ocid');
    final AsyncValue<Basic> basic = ref.watch(characterBasicProvider(ocid!));
    return Scaffold(
      body: switch (basic) {
        AsyncData(:final value) => Container(
          color: Colors.blue.shade300,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(value.character_image),
              Text(value.world_name),
              Text(value.character_level.toString()),
              Text(value.character_class),
              Text(value.character_name),
              SizedBox(height: 32),
              OutlinedButton(onPressed: reset, child: Text('Reset')),
              OutlinedButton(onPressed: update, child: Text("Update")),
            ],
          ),
        ),
        AsyncError(:final error) => Text(error.toString()),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
