import 'package:get/get.dart';

import '../controllers/meals_plan_controller.dart';

class MealsPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealsPlanController>(
      () => MealsPlanController(),
    );
  }
}
