import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class DaysText extends StatelessWidget {
  const DaysText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text(
            "daysText".tr,
            style: Theme.of(context).textTheme.headline5!,
          ),
        ),
      ],
    );
  }
}
