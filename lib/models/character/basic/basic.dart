import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic.freezed.dart';
part 'basic.g.dart';

@freezed
sealed class Basic with _$Basic {
  factory Basic({
    required String? date,
    required String character_name,
    required String world_name,
    required String character_gender,
    required String character_class,
    required String character_class_level,
    required int character_level,
    required int character_exp,
    required String character_exp_rate,
    required String? character_guild_name,
    required String character_image,
    required String character_date_create,
    required String access_flag,
    required String liberation_quest_clear_flag,
  }) = _Basic;

  factory Basic.fromJson(Map<String, dynamic> json) => _$BasicFromJson(json);
}
