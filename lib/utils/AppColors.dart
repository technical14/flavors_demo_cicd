import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

var appColor = FlavorConfig.instance.variables["appColor"];

class AppColor {
  static Color white = HexColor.fromHex('#ffffff');
  static Color black = HexColor.fromHex('#000000');

  //TODO: Main Primary Color
  // static Color primaryColor = HexColor.fromHex('#4288EE');//#4288EE
  static Color primaryColor = HexColor.fromHex(appColor.primaryColor); //#4288EE
  static Color appBgColor = HexColor.fromHex('#ffffff'); //#0E1218


}
extension HexColor on Color {
  static Color fromHex(String hexString) {
    hexString = hexString.trim();
    if(hexString.isEmpty){
      hexString = "#000000";
      log("HexString Log: $hexString");
    }
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}



