import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    Key? key,
    required this.text,
    this.padding,
    this.mainAxisAlignment,
  }) : super(key: key);

  final MainAxisAlignment? mainAxisAlignment;
  final EdgeInsets? padding;
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
            style: Theme.of(context).textTheme.headline5!,
          ),
        ),
      ],
    );
  }
}
