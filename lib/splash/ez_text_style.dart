import 'package:flutter/material.dart';


///文本样式
class TStyleUnit {
  static const lagerTextSize = 30.0;
  static const bigTextSize = 23.0;
  static const normalTextSize = 18.0;
  static const middleTextWhiteSize = 16.0;
  static const smallTextSize = 14.0;
  static const minTextSize = 12.0;

  static const minText = TextStyle(
    color: Color(0xffc4c4c4),
    fontSize: minTextSize,
  );

  static const splashShadows = TextStyle(
      color: Colors.grey,
      shadows: [
        Shadow(
            color: Colors.black,
            blurRadius: 1,
            offset: Offset(0.1, 0.1))
      ],
      fontSize: 12);


}
