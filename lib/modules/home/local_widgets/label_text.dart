import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:threethousand/modules/home/controller.dart';

class AboutText extends StatelessWidget {
  const AboutText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LabelText(
      text: 'aboutText'.tr,
      mainAxisAlignment: MainAxisAlignment.start,
      padding: const EdgeInsets.only(
        left: 50,
      ),
    );
  }
}

class DaysText extends StatelessWidget {
  const DaysText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final birthdayController = Get.find<BirthdayController>();

    return Obx(
      () => LabelText(
        text:
            '${birthdayController.dateType.string.toLowerCase().replaceFirst('datetype.', '')}sText'
                .tr,
        mainAxisAlignment: MainAxisAlignment.end,
        padding: const EdgeInsets.only(
          right: 50,
        ),
        onTap: birthdayController.dateTypeTapped,
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  const LabelText({
    Key? key,
    required this.text,
    this.mainAxisAlignment,
    this.padding,
    this.style,
    this.onTap,
  }) : super(key: key);

  final MainAxisAlignment? mainAxisAlignment;
  final EdgeInsets? padding;
  final TextStyle? style;
  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      children: [
        Padding(
          padding: padding ?? EdgeInsets.zero,
          child: onTap == null
              ? Text(
                  text,
                  style: style ?? Theme.of(context).textTheme.headline5!,
                )
              : GestureDetector(
                  onTap: onTap,
                  child: Text(
                    text,
                    style: style ?? Theme.of(context).textTheme.headline5!,
                  ),
                ),
        ),
      ],
    );
  }
}
