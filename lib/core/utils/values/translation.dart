import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appTitle': '30000 days',
          'aboutText': 'About',
          'daysText': 'days',
          'weeksText': 'weeks',
          'monthsText': 'months',
          'yearsText': 'years',
          'yearText': 'Year',
          'monthText': 'Month',
          'dayText': 'Day',
        },
        'ko_KR': {
          'appTitle': '30000일',
          'aboutText': '약',
          'daysText': '일',
          'weeksText': '주',
          'monthsText': '달',
          'yearsText': '년',
          'yearText': '년',
          'monthText': '월',
          'dayText': '일',
        },
      };
}
