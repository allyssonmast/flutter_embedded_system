import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/models/sensor.dart';
import '../../../data/repositories/setores_repository.dart';

class DetailsSensorController extends GetxController {
  var listTemp = RxList<Sensor>();
  var listMaxAndMin = RxList<Sensor>();
  Sensor? lastSensor;
  String sensorName = Get.arguments ?? 'LORA32_1';
  var loding = RxBool(true);
  var minima = 0.obs;
  var maxima = 0.obs;
  var dateFormat = DateFormat('yyyy-MM-dd');

  @override
  void onInit() {
    super.onInit();
    _initialValues();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _initialValues() {
    fakeTemp(DateTime.now());
  }

  fakeTemp(DateTime dateTime) async {
    loding.value = true;
    listMaxAndMin.clear();
    listTemp.value = await SetoresRepository()
        .getTempHum(sensorName, dateFormat.format(dateTime));
    if (listTemp.isNotEmpty) {
      lastSensor = listTemp.last;
      listMaxAndMin.value = _searchDerivadas(listTemp);
    }
    loding.value = false;
    update();
  }

  List<Sensor> _searchDerivadas(List<Sensor> list) {
    return [
      findMaxTemperature(list),
      findMinTemperature(list),
      findMaxHumidity(list),
      findMinHumidity(list)
    ];
  }
}

Sensor findMaxTemperature(List<Sensor> dataList) {
  var sensor = dataList.reduce(
      (max, current) => max.temperatura > current.temperatura ? max : current);
  sensor.name = 'Temperatura Máx';
  return sensor;
}

Sensor findMinTemperature(List<Sensor> dataList) {
  var sensor = dataList.reduce(
      (min, current) => min.temperatura < current.temperatura ? min : current);
  sensor.name = 'Temperatura Mín';
  return sensor;
}

Sensor findMaxHumidity(List<Sensor> dataList) {
  var sensor = dataList.reduce(
      (max, current) => max.humidade > current.humidade ? max : current);
  sensor.name = 'Umidade Máx';
  return sensor;
}

Sensor findMinHumidity(List<Sensor> dataList) {
  var sensor = dataList.reduce(
      (min, current) => min.humidade < current.humidade ? min : current);
  sensor.name = 'Umidade Mín';
  return sensor;
}
