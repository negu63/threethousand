import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:threethousand/core/utils/values/constants.dart';

class NumberController extends GetxController {
  RxInt year = DateTime.now().year.obs;
  RxInt month = DateTime.now().month.obs;
  RxInt day = DateTime.now().day.obs;
  RxInt lifeSpan = 30000.obs;

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

  calculateLifeSpan(int value) {
    final now = DateTime.now();
    final birthday = DateTime(year.value, month.value, day.value);
    lifeSpan.value = 30000 - now.difference(birthday).inDays.abs();
  }
}
