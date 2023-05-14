import 'package:get/get.dart';

import '../controllers/sensores_controller.dart';

class SensoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SensoresController>(
      () => SensoresController(),
    );
  }
}
