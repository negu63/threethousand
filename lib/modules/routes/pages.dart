import 'package:get/get.dart';
import 'package:threethousand/modules/home/page.dart';
import 'package:threethousand/modules/oss/page.dart';

import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.oss,
      page: () => const OssPage(),
    ),
  ];
}
