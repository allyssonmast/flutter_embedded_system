import 'package:get/get.dart';

import '../modules/details_sensor/bindings/details_sensor_binding.dart';
import '../modules/details_sensor/views/details_sensor_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/sensores/bindings/sensores_binding.dart';
import '../modules/sensores/views/sensores_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SENSORES,
      page: () => const SensoresView(),
      binding: SensoresBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS_SENSOR,
      page: () => const DetailsSensorView(),
      binding: DetailsSensorBinding(),
    ),
  ];
}
