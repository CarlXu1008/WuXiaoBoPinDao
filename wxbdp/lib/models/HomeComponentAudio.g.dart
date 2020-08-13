// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeComponentAudio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeComponentAudio _$HomeComponentAudioFromJson(Map<String, dynamic> json) {
  return HomeComponentAudio()
    ..src_id = json['src_id'] as String
    ..title = json['title'] as String
    ..audio_url = json['audio_url'] as String
    ..audio_compress_url = json['audio_compress_url'] as String
    ..audio_length = json['audio_length'] as String
    ..start_at = json['start_at'] as String
    ..img_url = json['img_url'] as String;
}

Map<String, dynamic> _$HomeComponentAudioToJson(HomeComponentAudio instance) =>
    <String, dynamic>{
      'src_id': instance.src_id,
      'title': instance.title,
      'audio_url': instance.audio_url,
      'audio_compress_url': instance.audio_compress_url,
      'audio_length': instance.audio_length,
      'start_at': instance.start_at,
      'img_url': instance.img_url
    };
