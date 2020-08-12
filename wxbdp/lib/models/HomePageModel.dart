import 'package:json_annotation/json_annotation.dart';

part 'HomePageModel.g.dart';

@JsonSerializable()
class HomePageModel {
    HomePageModel();

    num micro_page_id;
    bool is_homepage;
    String page_title;
    List components;
    Map<String,dynamic> navigation;
    String seo_info;
    Map<String,dynamic> theme;
    num entry_mode;
    num version_type;
    String company_info;
    
    factory HomePageModel.fromJson(Map<String,dynamic> json) => _$HomePageModelFromJson(json);
    Map<String, dynamic> toJson() => _$HomePageModelToJson(this);
}
