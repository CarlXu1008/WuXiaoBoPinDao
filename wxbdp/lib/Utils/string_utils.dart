import 'dart:convert';

class StringUtils {

  static String encode(String originalStr) {
    return jsonEncode(Utf8Encoder().convert(originalStr));
  }

  static String decode(String originalStr) {
    var list = List<int>();
    jsonDecode(originalStr).forEach(list.add);
    String value = Utf8Decoder().convert(list);
    return value;
  }

}