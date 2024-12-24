import 'package:flutter_flavor/flutter_flavor.dart';

var appString = FlavorConfig.instance.variables["appString"];

class Constant {
  static String appName = appString.appName;

}