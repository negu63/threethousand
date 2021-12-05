import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:threethousand/modules/home/controller.dart';

import 'label_text.dart';

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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: YearPicker(),
            ),
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MonthPicker(),
            ),
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DayPicker(),
            ),
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
    final numberController = Get.find<NumberController>();
    return Obx(
      () => NumberPicker(
        itemCount: 1,
        minValue: 0,
        maxValue: DateTime.now().year,
        value: numberController.year.value,
        selectedTextStyle: Theme.of(context).textTheme.headline6,
        onChanged: numberController.yearChanged,
      ),
    );
  }
}

class MonthPicker extends StatelessWidget {
  const MonthPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberController = Get.find<NumberController>();
    return Obx(
      () => NumberPicker(
        itemCount: 1,
        minValue: 1,
        maxValue: 12,
        value: numberController.month.value,
        selectedTextStyle: Theme.of(context).textTheme.headline6,
        onChanged: numberController.monthChanged,
      ),
    );
  }
}

class DayPicker extends StatelessWidget {
  const DayPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberController = Get.find<NumberController>();
    return Obx(
      () => NumberPicker(
        itemCount: 1,
        minValue: 1,
        maxValue: 31,
        value: numberController.day.value,
        selectedTextStyle: Theme.of(context).textTheme.headline6,
        onChanged: numberController.dayChanged,
      ),
    );
  }
}
