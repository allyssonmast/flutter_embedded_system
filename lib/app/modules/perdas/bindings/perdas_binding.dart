import 'package:get/get.dart';

import '../controllers/perdas_controller.dart';

class PerdasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerdasController>(
      () => PerdasController(),
    );
  }
}
