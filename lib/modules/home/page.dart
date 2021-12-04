import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_number/sliding_number.dart';
import 'package:threethousand/modules/home/controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NumberController numberController = Get.find();
    return Scaffold(
      body: Center(
        child: Obx(
          () => SlidingNumber(
            number: numberController.lifeSpan.value,
            style: Theme.of(context).textTheme.headline3!,
            duration: const Duration(milliseconds: 2000),
            curve: Curves.easeOut,
          ),
        ),
      ),
    );
  }
}
