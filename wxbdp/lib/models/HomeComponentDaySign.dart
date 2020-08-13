import 'package:json_annotation/json_annotation.dart';

part 'HomeComponentDaySign.g.dart';

@JsonSerializable()
class HomeComponentDaySign {
    HomeComponentDaySign();

    String descrb;
    String memo;
    String time;
    num time_stamp;
    
    factory HomeComponentDaySign.fromJson(Map<String,dynamic> json) => _$HomeComponentDaySignFromJson(json);
    Map<String, dynamic> toJson() => _$HomeComponentDaySignToJson(this);
}
