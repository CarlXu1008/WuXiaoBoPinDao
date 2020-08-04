import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastUtlis {

  static showText(String text, BuildContext context, {int duration, int gravity}) {
    Toast.show(text, context, duration: duration, gravity: gravity);
  }

}