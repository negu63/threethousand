import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threethousand/core/theme/app_theme.dart';
import 'package:threethousand/modules/home/controller.dart';
import 'package:threethousand/modules/home/page.dart';

import 'core/utils/values/translation.dart';
import 'modules/routes/pages.dart';
import 'modules/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(BirthdayController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      theme: appThemeData,
      initialRoute: Routes.home,
      getPages: AppPages.pages,
      home: const SafeArea(child: HomePage()),
    );
  }
}
