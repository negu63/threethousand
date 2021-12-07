import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '30000일',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.black.withOpacity(0.95),
                      ),
                ),
                Text(
                  '부정확한 방법으로 근거 없이 계산한 결과입니다.\n재미로만 봐주세요.',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black.withOpacity(0.95),
                      ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  child: Text(
                    '확인',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.95),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Text('Copyright 2021 negu63 <negu6633@gmail.com>'),
            ),
          ),
        ],
      ),
    );
  }
}
