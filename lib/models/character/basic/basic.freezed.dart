// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Basic {

 String? get date; String get character_name; String get world_name; String get character_gender; String get character_class; String get character_class_level; int get character_level; int get character_exp; String get character_exp_rate; String? get character_guild_name; String get character_image; String get character_date_create; String get access_flag; String get liberation_quest_clear_flag;
/// Create a copy of Basic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicCopyWith<Basic> get copyWith => _$BasicCopyWithImpl<Basic>(this as Basic, _$identity);

  /// Serializes this Basic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Basic&&(identical(other.date, date) || other.date == date)&&(identical(other.character_name, character_name) || other.character_name == character_name)&&(identical(other.world_name, world_name) || other.world_name == world_name)&&(identical(other.character_gender, character_gender) || other.character_gender == character_gender)&&(identical(other.character_class, character_class) || other.character_class == character_class)&&(identical(other.character_class_level, character_class_level) || other.character_class_level == character_class_level)&&(identical(other.character_level, character_level) || other.character_level == character_level)&&(identical(other.character_exp, character_exp) || other.character_exp == character_exp)&&(identical(other.character_exp_rate, character_exp_rate) || other.character_exp_rate == character_exp_rate)&&(identical(other.character_guild_name, character_guild_name) || other.character_guild_name == character_guild_name)&&(identical(other.character_image, character_image) || other.character_image == character_image)&&(identical(other.character_date_create, character_date_create) || other.character_date_create == character_date_create)&&(identical(other.access_flag, access_flag) || other.access_flag == access_flag)&&(identical(other.liberation_quest_clear_flag, liberation_quest_clear_flag) || other.liberation_quest_clear_flag == liberation_quest_clear_flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,character_name,world_name,character_gender,character_class,character_class_level,character_level,character_exp,character_exp_rate,character_guild_name,character_image,character_date_create,access_flag,liberation_quest_clear_flag);

@override
String toString() {
  return 'Basic(date: $date, character_name: $character_name, world_name: $world_name, character_gender: $character_gender, character_class: $character_class, character_class_level: $character_class_level, character_level: $character_level, character_exp: $character_exp, character_exp_rate: $character_exp_rate, character_guild_name: $character_guild_name, character_image: $character_image, character_date_create: $character_date_create, access_flag: $access_flag, liberation_quest_clear_flag: $liberation_quest_clear_flag)';
}


}

/// @nodoc
abstract mixin class $BasicCopyWith<$Res>  {
  factory $BasicCopyWith(Basic value, $Res Function(Basic) _then) = _$BasicCopyWithImpl;
@useResult
$Res call({
 String? date, String character_name, String world_name, String character_gender, String character_class, String character_class_level, int character_level, int character_exp, String character_exp_rate, String? character_guild_name, String character_image, String character_date_create, String access_flag, String liberation_quest_clear_flag
});




}
/// @nodoc
class _$BasicCopyWithImpl<$Res>
    implements $BasicCopyWith<$Res> {
  _$BasicCopyWithImpl(this._self, this._then);

  final Basic _self;
  final $Res Function(Basic) _then;

/// Create a copy of Basic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? character_name = null,Object? world_name = null,Object? character_gender = null,Object? character_class = null,Object? character_class_level = null,Object? character_level = null,Object? character_exp = null,Object? character_exp_rate = null,Object? character_guild_name = freezed,Object? character_image = null,Object? character_date_create = null,Object? access_flag = null,Object? liberation_quest_clear_flag = null,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,character_name: null == character_name ? _self.character_name : character_name // ignore: cast_nullable_to_non_nullable
as String,world_name: null == world_name ? _self.world_name : world_name // ignore: cast_nullable_to_non_nullable
as String,character_gender: null == character_gender ? _self.character_gender : character_gender // ignore: cast_nullable_to_non_nullable
as String,character_class: null == character_class ? _self.character_class : character_class // ignore: cast_nullable_to_non_nullable
as String,character_class_level: null == character_class_level ? _self.character_class_level : character_class_level // ignore: cast_nullable_to_non_nullable
as String,character_level: null == character_level ? _self.character_level : character_level // ignore: cast_nullable_to_non_nullable
as int,character_exp: null == character_exp ? _self.character_exp : character_exp // ignore: cast_nullable_to_non_nullable
as int,character_exp_rate: null == character_exp_rate ? _self.character_exp_rate : character_exp_rate // ignore: cast_nullable_to_non_nullable
as String,character_guild_name: freezed == character_guild_name ? _self.character_guild_name : character_guild_name // ignore: cast_nullable_to_non_nullable
as String?,character_image: null == character_image ? _self.character_image : character_image // ignore: cast_nullable_to_non_nullable
as String,character_date_create: null == character_date_create ? _self.character_date_create : character_date_create // ignore: cast_nullable_to_non_nullable
as String,access_flag: null == access_flag ? _self.access_flag : access_flag // ignore: cast_nullable_to_non_nullable
as String,liberation_quest_clear_flag: null == liberation_quest_clear_flag ? _self.liberation_quest_clear_flag : liberation_quest_clear_flag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Basic implements Basic {
   _Basic({required this.date, required this.character_name, required this.world_name, required this.character_gender, required this.character_class, required this.character_class_level, required this.character_level, required this.character_exp, required this.character_exp_rate, required this.character_guild_name, required this.character_image, required this.character_date_create, required this.access_flag, required this.liberation_quest_clear_flag});
  factory _Basic.fromJson(Map<String, dynamic> json) => _$BasicFromJson(json);

@override final  String? date;
@override final  String character_name;
@override final  String world_name;
@override final  String character_gender;
@override final  String character_class;
@override final  String character_class_level;
@override final  int character_level;
@override final  int character_exp;
@override final  String character_exp_rate;
@override final  String? character_guild_name;
@override final  String character_image;
@override final  String character_date_create;
@override final  String access_flag;
@override final  String liberation_quest_clear_flag;

/// Create a copy of Basic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicCopyWith<_Basic> get copyWith => __$BasicCopyWithImpl<_Basic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Basic&&(identical(other.date, date) || other.date == date)&&(identical(other.character_name, character_name) || other.character_name == character_name)&&(identical(other.world_name, world_name) || other.world_name == world_name)&&(identical(other.character_gender, character_gender) || other.character_gender == character_gender)&&(identical(other.character_class, character_class) || other.character_class == character_class)&&(identical(other.character_class_level, character_class_level) || other.character_class_level == character_class_level)&&(identical(other.character_level, character_level) || other.character_level == character_level)&&(identical(other.character_exp, character_exp) || other.character_exp == character_exp)&&(identical(other.character_exp_rate, character_exp_rate) || other.character_exp_rate == character_exp_rate)&&(identical(other.character_guild_name, character_guild_name) || other.character_guild_name == character_guild_name)&&(identical(other.character_image, character_image) || other.character_image == character_image)&&(identical(other.character_date_create, character_date_create) || other.character_date_create == character_date_create)&&(identical(other.access_flag, access_flag) || other.access_flag == access_flag)&&(identical(other.liberation_quest_clear_flag, liberation_quest_clear_flag) || other.liberation_quest_clear_flag == liberation_quest_clear_flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,character_name,world_name,character_gender,character_class,character_class_level,character_level,character_exp,character_exp_rate,character_guild_name,character_image,character_date_create,access_flag,liberation_quest_clear_flag);

@override
String toString() {
  return 'Basic(date: $date, character_name: $character_name, world_name: $world_name, character_gender: $character_gender, character_class: $character_class, character_class_level: $character_class_level, character_level: $character_level, character_exp: $character_exp, character_exp_rate: $character_exp_rate, character_guild_name: $character_guild_name, character_image: $character_image, character_date_create: $character_date_create, access_flag: $access_flag, liberation_quest_clear_flag: $liberation_quest_clear_flag)';
}


}

/// @nodoc
abstract mixin class _$BasicCopyWith<$Res> implements $BasicCopyWith<$Res> {
  factory _$BasicCopyWith(_Basic value, $Res Function(_Basic) _then) = __$BasicCopyWithImpl;
@override @useResult
$Res call({
 String? date, String character_name, String world_name, String character_gender, String character_class, String character_class_level, int character_level, int character_exp, String character_exp_rate, String? character_guild_name, String character_image, String character_date_create, String access_flag, String liberation_quest_clear_flag
});




}
/// @nodoc
class __$BasicCopyWithImpl<$Res>
    implements _$BasicCopyWith<$Res> {
  __$BasicCopyWithImpl(this._self, this._then);

  final _Basic _self;
  final $Res Function(_Basic) _then;

/// Create a copy of Basic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? character_name = null,Object? world_name = null,Object? character_gender = null,Object? character_class = null,Object? character_class_level = null,Object? character_level = null,Object? character_exp = null,Object? character_exp_rate = null,Object? character_guild_name = freezed,Object? character_image = null,Object? character_date_create = null,Object? access_flag = null,Object? liberation_quest_clear_flag = null,}) {
  return _then(_Basic(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,character_name: null == character_name ? _self.character_name : character_name // ignore: cast_nullable_to_non_nullable
as String,world_name: null == world_name ? _self.world_name : world_name // ignore: cast_nullable_to_non_nullable
as String,character_gender: null == character_gender ? _self.character_gender : character_gender // ignore: cast_nullable_to_non_nullable
as String,character_class: null == character_class ? _self.character_class : character_class // ignore: cast_nullable_to_non_nullable
as String,character_class_level: null == character_class_level ? _self.character_class_level : character_class_level // ignore: cast_nullable_to_non_nullable
as String,character_level: null == character_level ? _self.character_level : character_level // ignore: cast_nullable_to_non_nullable
as int,character_exp: null == character_exp ? _self.character_exp : character_exp // ignore: cast_nullable_to_non_nullable
as int,character_exp_rate: null == character_exp_rate ? _self.character_exp_rate : character_exp_rate // ignore: cast_nullable_to_non_nullable
as String,character_guild_name: freezed == character_guild_name ? _self.character_guild_name : character_guild_name // ignore: cast_nullable_to_non_nullable
as String?,character_image: null == character_image ? _self.character_image : character_image // ignore: cast_nullable_to_non_nullable
as String,character_date_create: null == character_date_create ? _self.character_date_create : character_date_create // ignore: cast_nullable_to_non_nullable
as String,access_flag: null == access_flag ? _self.access_flag : access_flag // ignore: cast_nullable_to_non_nullable
as String,liberation_quest_clear_flag: null == liberation_quest_clear_flag ? _self.liberation_quest_clear_flag : liberation_quest_clear_flag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
