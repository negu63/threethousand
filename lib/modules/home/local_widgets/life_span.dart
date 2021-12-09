import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_number/sliding_number.dart';
import 'package:threethousand/core/utils/values/constants.dart';
import 'package:threethousand/modules/home/controller.dart';

class LifeSpan extends StatelessWidget {
  const LifeSpan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final birthdayController = Get.find<BirthdayController>();
    return Obx(
      () => SlidingNumber(
        number: birthdayController.lifeSpan.value,
        style: Get.width >= 382
            ? Theme.of(context).textTheme.headline1!
            : Theme.of(context).textTheme.headline2!,
        duration: lifeSpanSlidingDuration,
        curve: Curves.easeOut,
      ),
    );
  }
}
