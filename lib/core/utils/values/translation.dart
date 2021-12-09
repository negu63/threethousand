import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appTitle': '30000 days',
          'descriptionText': 'The time you\'ve lived so far...',
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
          'descriptionText': '평균 수명 약 30000일 중\n이때까지 당신이 살아온 시간은',
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
