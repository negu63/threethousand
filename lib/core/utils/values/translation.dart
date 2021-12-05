import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appTitle': 'About 30000 days',
          'aboutText': 'About',
          'daysText': 'days',
          'ageText': 'Age',
        },
        'ko_KR': {
          'appTitle': '약 30000일',
          'aboutText': '약',
          'daysText': '일',
          'ageText': '나이',
        },
      };
}
