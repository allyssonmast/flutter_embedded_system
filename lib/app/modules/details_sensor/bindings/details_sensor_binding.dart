import 'package:get/get.dart';

import '../controllers/details_sensor_controller.dart';

class DetailsSensorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsSensorController>(
      () => DetailsSensorController(),
    );
  }
}
