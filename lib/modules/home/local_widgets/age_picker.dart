import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:threethousand/modules/home/controller.dart';

class AgePicker extends StatelessWidget {
  const AgePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberController = Get.find<NumberController>();
    return Obx(
      () => NumberPicker(
        itemCount: 1,
        minValue: 0,
        maxValue: 969,
        value: numberController.age.value,
        onChanged: numberController.ageChanged,
      ),
    );
  }
}
