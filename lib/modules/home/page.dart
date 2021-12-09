import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:threethousand/modules/home/local_widgets/label_text.dart';
import 'package:threethousand/modules/home/local_widgets/birthday_picker.dart';
import 'package:threethousand/modules/home/local_widgets/life_span.dart';
import 'package:threethousand/modules/home/local_widgets/oss_button.dart';

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
                    Container(
                      margin: const EdgeInsets.only(top: 50, bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AboutText(),
                          const LifeSpan(),
                          const DaysText(),
                        ],
                      ),
                    ),
                    const BirthdayPicker(),
                  ],
                ),
                const Positioned(
                  bottom: 3,
                  right: 4,
                  child: OssButton(),
                ),
                const Positioned(
                  bottom: 6,
                  left: 12,
                  child: TitleText(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
