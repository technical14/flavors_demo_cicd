import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:fluttercicd/Flavors/AppColors.dart';
import 'package:fluttercicd/Flavors/AppStrings.dart';
import '../main.dart';

void main() async {
  SandBoxAppStrings appString = SandBoxAppStrings();
  SandBoxAppColors appColors = SandBoxAppColors();

  FlavorConfig(
    variables: {
      "appString": appString,
      "appColor": appColors,
    },
  );

  WidgetsFlutterBinding.ensureInitialized();

  return runApp(MyApp());
}