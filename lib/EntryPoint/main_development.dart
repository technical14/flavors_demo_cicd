import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:fluttercicd/Flavors/AppStrings.dart';
import '../Flavors/AppColors.dart';
import '../main.dart';

void main() async {
  DevelopmentAppStrings appString = DevelopmentAppStrings();
  DevelopmentAppColors appColors = DevelopmentAppColors();

  FlavorConfig(
    variables: {
      "appString": appString,
      "appColor": appColors,
    },
  );

  WidgetsFlutterBinding.ensureInitialized();

  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  return runApp(MyApp());
}