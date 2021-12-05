import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

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
    return LabelText(
      text: 'daysText'.tr,
      mainAxisAlignment: MainAxisAlignment.end,
      padding: const EdgeInsets.only(
        right: 50,
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
  }) : super(key: key);

  final MainAxisAlignment? mainAxisAlignment;
  final EdgeInsets? padding;
  final TextStyle? style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      children: [
        Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Text(
            text,
            style: style ?? Theme.of(context).textTheme.headline5!,
          ),
        ),
      ],
    );
  }
}
