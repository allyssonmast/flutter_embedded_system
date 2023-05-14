import 'package:embedded_system/app/modules/sensores/bindings/sensores_binding.dart';
import 'package:embedded_system/app/modules/sensores/controllers/sensores_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SensoresController>(() => SensoresController());
  }
}
