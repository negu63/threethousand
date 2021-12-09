import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OssButton extends StatelessWidget {
  const OssButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.info_outline,
        size: 30,
      ),
      onPressed: () {
        Get.toNamed('/oss');
      },
    );
  }
}
