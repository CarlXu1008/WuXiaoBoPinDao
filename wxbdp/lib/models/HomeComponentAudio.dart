import 'package:json_annotation/json_annotation.dart';

part 'HomeComponentAudio.g.dart';

@JsonSerializable()
class HomeComponentAudio {
    HomeComponentAudio();

    String src_id;
    String title;
    String audio_url;
    String audio_compress_url;
    String audio_length;
    String start_at;
    String img_url;
    
    factory HomeComponentAudio.fromJson(Map<String,dynamic> json) => _$HomeComponentAudioFromJson(json);
    Map<String, dynamic> toJson() => _$HomeComponentAudioToJson(this);
}
