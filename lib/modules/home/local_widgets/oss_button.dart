import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OssButton extends StatelessWidget {
  const OssButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextButton(
        onPressed: () {
          Get.toNamed('/oss');
        },
        child: Text(
          'i',
          style: Theme.of(context).textTheme.headline5!,
        ),
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
      ),
    );
  }
}
