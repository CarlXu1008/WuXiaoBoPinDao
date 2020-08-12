// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomePageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageModel _$HomePageModelFromJson(Map<String, dynamic> json) {
  return HomePageModel()
    ..micro_page_id = json['micro_page_id'] as num
    ..is_homepage = json['is_homepage'] as bool
    ..page_title = json['page_title'] as String
    ..components = json['components'] as List
    ..navigation = json['navigation'] as Map<String, dynamic>
    ..seo_info = json['seo_info'] as String
    ..theme = json['theme'] as Map<String, dynamic>
    ..entry_mode = json['entry_mode'] as num
    ..version_type = json['version_type'] as num
    ..company_info = json['company_info'] as String;
}

Map<String, dynamic> _$HomePageModelToJson(HomePageModel instance) =>
    <String, dynamic>{
      'micro_page_id': instance.micro_page_id,
      'is_homepage': instance.is_homepage,
      'page_title': instance.page_title,
      'components': instance.components,
      'navigation': instance.navigation,
      'seo_info': instance.seo_info,
      'theme': instance.theme,
      'entry_mode': instance.entry_mode,
      'version_type': instance.version_type,
      'company_info': instance.company_info
    };
