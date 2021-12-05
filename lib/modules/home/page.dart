import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threethousand/modules/home/local_widgets/label_text.dart';
import 'package:threethousand/modules/home/local_widgets/age_picker.dart';
import 'package:threethousand/modules/home/local_widgets/life_span.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            scrollbars: false,
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
            physics: const BouncingScrollPhysics(),
          ),
          child: Center(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LabelText(
                      text: 'aboutText'.tr,
                      mainAxisAlignment: MainAxisAlignment.start,
                      padding: const EdgeInsets.only(
                        left: 50,
                      ),
                    ),
                    const LifeSpan(),
                    LabelText(
                      text: 'daysText'.tr,
                      mainAxisAlignment: MainAxisAlignment.end,
                      padding: const EdgeInsets.only(
                        right: 50,
                      ),
                    ),
                    const SizedBox(height: 50),
                    LabelText(text: 'ageText'.tr),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AgePicker(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
