import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class AgeText extends StatelessWidget {
  const AgeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ageText".tr,
          style: Theme.of(context).textTheme.headline5!,
        ),
      ],
    );
  }
}
