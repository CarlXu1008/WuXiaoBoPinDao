// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return LoginModel()
    ..id = json['id'] as num
    ..wx_open_id = json['wx_open_id'] as String
    ..wx_union_id = json['wx_union_id'] as String
    ..api_token = json['api_token'] as String;
}

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wx_open_id': instance.wx_open_id,
      'wx_union_id': instance.wx_union_id,
      'api_token': instance.api_token
    };
