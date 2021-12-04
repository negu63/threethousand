import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NumberController extends GetxController {
  RxInt age = 0.obs;
  RxInt lifeSpan = 30000.obs;

  @override
  void onInit() {
    super.onInit();

    debounce(
      age,
      caculateLifeSpan,
      time: const Duration(milliseconds: 500),
    );
  }

  ageChanged(int value) {
    age.value = value;
  }

  caculateLifeSpan(int age) {
    lifeSpan.value = 30000 - age * 365;
  }
}
