import 'package:embedded_system/app/data/models/temperature_humidity_monitor.dart';
import 'package:embedded_system/app/data/repositories/temp_repository.dart';
import 'package:get/get.dart';

class DetailsSensorController extends GetxController {
var listTemp=RxList<TemperatureHumidityMonitor>();
  @override
  void onInit() {
    super.onInit();
    _fakeTemp();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  _fakeTemp() {
    listTemp.value = TempRepository().simulateData();
    listTemp.removeLast();
  }
}
