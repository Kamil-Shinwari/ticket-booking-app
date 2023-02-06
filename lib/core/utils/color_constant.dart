import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color green300 = fromHex('#76d39d');

  static Color gray5001 = fromHex('#f6fffa');

  static Color green200 = fromHex('#a3e2be');

  static Color gray900Cc = fromHex('#cc212121');

  static Color gray80000 = fromHex('#003a3a3a');

  static Color gray50 = fromHex('#f9f9f9');

  static Color greenA400 = fromHex('#39e180');

  static Color green400 = fromHex('#53a676');

  static Color greenA700 = fromHex('#1ab65c');

  static Color black900 = fromHex('#000000');

  static Color amber5001e = fromHex('#1effc107');

  static Color gray50001 = fromHex('#9199a0');

  static Color greenA40001 = fromHex('#30d475');

  static Color blueGray900 = fromHex('#2b2b2b');

  static Color gray600 = fromHex('#757575');

  static Color gray700 = fromHex('#616161');

  static Color amber50019 = fromHex('#19ffc107');

  static Color gray400 = fromHex('#bdbdbd');

  static Color gray500 = fromHex('#9e9e9e');

  static Color indigoA20014 = fromHex('#145a6cea');

  static Color gray800 = fromHex('#424242');

  static Color gray900 = fromHex('#212121');

  static Color gray90001 = fromHex('#0f172d');

  static Color greenA7003f = fromHex('#3f1ab65c');

  static Color orange600 = fromHex('#f88600');

  static Color gray200 = fromHex('#eeeeee');

  static Color black9000c = fromHex('#0c04060f');

  static Color green50 = fromHex('#e8f8ef');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray30001 = fromHex('#d9dde2');

  static Color gray100 = fromHex('#f5f5f5');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f2f3f4');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
