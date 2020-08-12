import 'package:json_annotation/json_annotation.dart';

part 'userModel.g.dart';

@JsonSerializable()
class UserModel {
    UserModel();

    String wx_nickname;
    String wx_avatar;
    String wx_avatar_wx;
    String wx_name;
    num wx_gender;
    String birth;
    String address;
    String job;
    String company;
    String phone;
    String wx_open_id;
    String wx_union_id;
    String app_id;
    String user_id;
    num operation_activity;
    
    factory UserModel.fromJson(Map<String,dynamic> json) => _$UserModelFromJson(json);
    Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
