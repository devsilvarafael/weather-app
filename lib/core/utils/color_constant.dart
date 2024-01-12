import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');
  static Color gray = fromHex('#707070');

  static Color whiteA7005e = fromHex('#5effffff');

  static Color blueGray50 = fromHex('#f1f1f1');

  static Color blueGray10000 = fromHex('#00d9d9d9');

  static Color black9009e = fromHex('#9e000000');

  static Color red500 = fromHex('#ff3939');

  static Color gray50 = fromHex('#f8f8f8');

  static Color black90000 = fromHex('#00000000');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color teal800 = fromHex('#02864a');

  static Color lightBlueA700 = fromHex('#0099f5');

  static Color deepPurpleA400 = fromHex('#8324ff');

  static Color deepPurpleA100 = fromHex('#a362f8');

  static Color blueGray900 = fromHex('#2f2f2f');

  static Color gray600 = fromHex('#6f6f6f');

  static Color gray400 = fromHex('#bdbaba');

  static Color gray60001 = fromHex('#7e7e7e');

  static Color blueGray400 = fromHex('#888888');

  static Color black9008e = fromHex('#8e000000');

  static Color gray800 = fromHex('#424242');
  static Color purple = fromHex('#A462F9');

  static Color orange400 = fromHex('#ffa61e');

  static Color gray300 = fromHex('#f2dcdb');

  static Color blue50 = fromHex('#e6f5fe');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color deepPurple50 = fromHex('#e7dbf2');

  static Color orange50 = fromHex('#f2efdb');

  static Color black90011 = fromHex('#11000000');

  static Color black90093 = fromHex('#93000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan400 = fromHex('#1caad7');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
