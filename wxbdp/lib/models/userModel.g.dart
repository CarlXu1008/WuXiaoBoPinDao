// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel()
    ..wx_nickname = json['wx_nickname'] as String
    ..wx_avatar = json['wx_avatar'] as String
    ..wx_avatar_wx = json['wx_avatar_wx'] as String
    ..wx_name = json['wx_name'] as String
    ..wx_gender = json['wx_gender'] as num
    ..birth = json['birth'] as String
    ..address = json['address'] as String
    ..job = json['job'] as String
    ..company = json['company'] as String
    ..phone = json['phone'] as String
    ..wx_open_id = json['wx_open_id'] as String
    ..wx_union_id = json['wx_union_id'] as String
    ..app_id = json['app_id'] as String
    ..user_id = json['user_id'] as String
    ..operation_activity = json['operation_activity'] as num;
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'wx_nickname': instance.wx_nickname,
      'wx_avatar': instance.wx_avatar,
      'wx_avatar_wx': instance.wx_avatar_wx,
      'wx_name': instance.wx_name,
      'wx_gender': instance.wx_gender,
      'birth': instance.birth,
      'address': instance.address,
      'job': instance.job,
      'company': instance.company,
      'phone': instance.phone,
      'wx_open_id': instance.wx_open_id,
      'wx_union_id': instance.wx_union_id,
      'app_id': instance.app_id,
      'user_id': instance.user_id,
      'operation_activity': instance.operation_activity
    };
