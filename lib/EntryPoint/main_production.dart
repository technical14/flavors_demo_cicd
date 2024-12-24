
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:fluttercicd/Flavors/AppColors.dart';
import 'package:fluttercicd/Flavors/AppStrings.dart';

import '../main.dart';

void main() async {
  ProductionAppStrings appString = ProductionAppStrings();
  ProductionAppAppColors appColors = ProductionAppAppColors();

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