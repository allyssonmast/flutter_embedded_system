import 'package:get/get.dart';

import '../../details_sensor/controllers/details_sensor_controller.dart';
import '../controllers/sensores_controller.dart';

class SensoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SensoresController>(
      () => SensoresController(),
    );
    Get.lazyPut<DetailsSensorController>(
          () => DetailsSensorController(),
    );
  }
}
