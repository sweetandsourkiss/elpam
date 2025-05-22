import 'package:elpam/models/character/basic/basic.dart';
import 'package:elpam/providers/apis/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Basic> basic = ref.watch(characterBasicProvider);
    return Center(
      child: switch (basic) {
        AsyncData(:final value) => Text(value.character_name),
        AsyncError(:final error) => Text(error.toString()),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
