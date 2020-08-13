// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeComponentDaySign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeComponentDaySign _$HomeComponentDaySignFromJson(Map<String, dynamic> json) {
  return HomeComponentDaySign()
    ..descrb = json['descrb'] as String
    ..memo = json['memo'] as String
    ..time = json['time'] as String
    ..time_stamp = json['time_stamp'] as num;
}

Map<String, dynamic> _$HomeComponentDaySignToJson(
        HomeComponentDaySign instance) =>
    <String, dynamic>{
      'descrb': instance.descrb,
      'memo': instance.memo,
      'time': instance.time,
      'time_stamp': instance.time_stamp
    };
