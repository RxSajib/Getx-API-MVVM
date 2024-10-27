import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/getx_loclization/languages.dart';
import 'package:getx_mvvm/res/Routes.dart';

import 'component/InternetException.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.appRoutes,

      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
    );
  }
}

