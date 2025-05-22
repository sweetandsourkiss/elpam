// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Basic _$BasicFromJson(Map<String, dynamic> json) => _Basic(
  date: json['date'] as String?,
  character_name: json['character_name'] as String,
  world_name: json['world_name'] as String,
  character_gender: json['character_gender'] as String,
  character_class: json['character_class'] as String,
  character_class_level: json['character_class_level'] as String,
  character_level: (json['character_level'] as num).toInt(),
  character_exp: (json['character_exp'] as num).toInt(),
  character_exp_rate: json['character_exp_rate'] as String,
  character_guild_name: json['character_guild_name'] as String?,
  character_image: json['character_image'] as String,
  character_date_create: json['character_date_create'] as String,
  access_flag: json['access_flag'] as String,
  liberation_quest_clear_flag: json['liberation_quest_clear_flag'] as String,
);

Map<String, dynamic> _$BasicToJson(_Basic instance) => <String, dynamic>{
  'date': instance.date,
  'character_name': instance.character_name,
  'world_name': instance.world_name,
  'character_gender': instance.character_gender,
  'character_class': instance.character_class,
  'character_class_level': instance.character_class_level,
  'character_level': instance.character_level,
  'character_exp': instance.character_exp,
  'character_exp_rate': instance.character_exp_rate,
  'character_guild_name': instance.character_guild_name,
  'character_image': instance.character_image,
  'character_date_create': instance.character_date_create,
  'access_flag': instance.access_flag,
  'liberation_quest_clear_flag': instance.liberation_quest_clear_flag,
};
