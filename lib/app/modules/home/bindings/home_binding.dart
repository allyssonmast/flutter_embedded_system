import 'package:get/get.dart';

import '../../details_sensor/controllers/details_sensor_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());

    Get.lazyPut<DetailsSensorController>(
          () => DetailsSensorController(),
    );
  }
}
