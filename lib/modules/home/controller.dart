import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:threethousand/core/utils/values/constants.dart';

class BirthdayController extends GetxController {
  RxInt year = DateTime.now().year.obs;
  RxInt month = DateTime.now().month.obs;
  RxInt day = DateTime.now().day.obs;
  RxInt lifeSpan = 0.obs;
  Rx<DateType> dateType = DateType.DAY.obs;

  @override
  void onInit() {
    super.onInit();

    debounce(
      year,
      calculateLifeSpan,
      time: pickerDebounceDuration,
    );

    debounce(
      month,
      calculateLifeSpan,
      time: pickerDebounceDuration,
    );

    debounce(
      day,
      calculateLifeSpan,
      time: pickerDebounceDuration,
    );

    debounce(
      dateType,
      calculateLifeSpan,
      time: pickerDebounceDuration ~/ 5,
    );
  }

  yearChanged(int value) {
    year.value = value;
  }

  monthChanged(int value) {
    month.value = value;
  }

  dayChanged(int value) {
    day.value = value;
  }

  calculateLifeSpan(value) {
    final now = DateTime.now();
    final birthday = DateTime(year.value, month.value, day.value);
    final days = now.difference(birthday).inDays.abs();

    switch (dateType.value) {
      case DateType.DAY:
        lifeSpan.value = days;
        break;
      case DateType.WEEK:
        lifeSpan.value = days ~/ 7;
        break;
      case DateType.MONTH:
        lifeSpan.value = days ~/ 30;
        break;
      case DateType.YEAR:
        lifeSpan.value = days ~/ 365;
        break;
    }
  }

  dateTypeTapped() {
    switch (dateType.value) {
      case DateType.DAY:
        dateType.value = DateType.WEEK;
        break;
      case DateType.WEEK:
        dateType.value = DateType.MONTH;
        break;
      case DateType.MONTH:
        dateType.value = DateType.YEAR;
        break;
      case DateType.YEAR:
        dateType.value = DateType.DAY;
        break;
    }
  }
}
