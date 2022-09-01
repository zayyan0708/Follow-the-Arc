import 'package:get/get.dart';

import '../controllers/currentanalysis_controller.dart';

class CurrentanalysisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrentanalysisController>(
      () => CurrentanalysisController(),
    );
  }
}
