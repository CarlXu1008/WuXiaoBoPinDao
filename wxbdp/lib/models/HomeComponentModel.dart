import 'package:json_annotation/json_annotation.dart';
import "homeComponentAudio.dart";
import "homeComponentDaySign.dart";
part 'HomeComponentModel.g.dart';

@JsonSerializable()
class HomeComponentModel {
    HomeComponentModel();

    String title;
    String summary;
    String img_url;
    String img_url_compressed_larger;
    String alive_img_url;
    num payment_type;
    String line_price;
    String start_at;
    String stop_at;
    String period;
    String product_name;
    num view_count;
    String comment_count;
    num resource_count;
    num feeds_count;
    String content_app_id;
    num finished_state;
    String manual_stop_at;
    num is_stop_sell;
    num alive_type;
    num act_type;
    num sub_type;
    String show_price;
    String purchase_count;
    List resource_tag;
    String src_type;
    String start_at_pc;
    String full_start_at;
    String jump_url;
    String mp_url;
    String douyin_url;
    String baidu_url;
    bool is_navigation;
    num mp_support;
    String join_count;
    String info_tag;
    HomeComponentAudio audio;
    String src_id;
    String lesson_start_at;
    String lesson_stop_at;
    num is_related;
    String svip_tag;
    HomeComponentDaySign sign_info;
    
    factory HomeComponentModel.fromJson(Map<String,dynamic> json) => _$HomeComponentModelFromJson(json);
    Map<String, dynamic> toJson() => _$HomeComponentModelToJson(this);
}
