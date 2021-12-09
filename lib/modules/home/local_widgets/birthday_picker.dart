import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threethousand/modules/home/controller.dart';

import 'label_text.dart';
import 'package:threethousand/numberpicker.dart';

class BirthdayPicker extends StatelessWidget {
  const BirthdayPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            LabelText(
              text: 'yearText'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            const YearPicker(),
          ],
        ),
        Column(
          children: [
            LabelText(
              text: 'monthText'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            const MonthPicker(),
          ],
        ),
        Column(
          children: [
            LabelText(
              text: 'dayText'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            const DayPicker(),
          ],
        )
      ],
    );
  }
}

class YearPicker extends StatelessWidget {
  const YearPicker({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final birthdayController = Get.find<BirthdayController>();
    final year = DateTime.now().year;
    return Obx(
      () => NumberPicker(
        itemCount: 1,
        minValue: year - 200,
        maxValue: year,
        value: birthdayController.year.value,
        selectedTextStyle: Theme.of(context).textTheme.headline6,
        onChanged: birthdayController.yearChanged,
      ),
    );
  }
}

class MonthPicker extends StatelessWidget {
  const MonthPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final birthdayController = Get.find<BirthdayController>();
    return Obx(
      () => NumberPicker(
        infiniteLoop: true,
        itemCount: 1,
        minValue: 1,
        maxValue: 12,
        value: birthdayController.month.value,
        selectedTextStyle: Theme.of(context).textTheme.headline6,
        onChanged: birthdayController.monthChanged,
      ),
    );
  }
}

class DayPicker extends StatelessWidget {
  const DayPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final birthdayController = Get.find<BirthdayController>();
    return Obx(
      () => NumberPicker(
        infiniteLoop: true,
        itemCount: 1,
        minValue: 1,
        maxValue: 31,
        value: birthdayController.day.value,
        selectedTextStyle: Theme.of(context).textTheme.headline6,
        onChanged: birthdayController.dayChanged,
      ),
    );
  }
}
