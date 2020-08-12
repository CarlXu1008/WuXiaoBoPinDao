import 'package:json_annotation/json_annotation.dart';

part 'LoginModel.g.dart';

@JsonSerializable()
class LoginModel {
    LoginModel();

    num id;
    String wx_open_id;
    String wx_union_id;
    String api_token;
    
    factory LoginModel.fromJson(Map<String,dynamic> json) => _$LoginModelFromJson(json);
    Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
