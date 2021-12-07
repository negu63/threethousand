import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threethousand/modules/home/controller.dart';
import 'package:threethousand/modules/notice/page.dart';

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
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.notice,
      getPages: AppPages.pages,
      home: const SafeArea(child: NoticePage()),
    );
  }
}
