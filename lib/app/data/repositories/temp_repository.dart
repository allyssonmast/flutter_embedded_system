import 'dart:math';

import '../models/temperature_humidity_monitor.dart';

class TempRepository {
  List<TemperatureHumidityMonitor> simulateData() {
    // define a temperatura e umidade médias para cada período do dia
    const double morningTemp = 20.0;
    const double afternoonTemp = 25.0;
    const double eveningTemp = 20.0;
    const double nightTemp = 15.0;

    const double morningHumidity = 60.0;
    const double afternoonHumidity = 50.0;
    const double eveningHumidity = 60.0;
    const double nightHumidity = 70.0;

    // cria uma lista vazia de monitores
    List<TemperatureHumidityMonitor> monitors = [];

    // define a data inicial
    DateTime timestamp = DateTime.now().subtract(const Duration(days: 1));

    // loop para gerar valores simulados de temperatura e umidade
    while (timestamp.isBefore(DateTime.now())) {
      // define a temperatura e umidade para este intervalo de tempo
      double temperature;
      double humidity;
      if (timestamp.hour >= 6 && timestamp.hour < 12) {
        temperature = morningTemp + _generateRandomValue(-2, 2);
        humidity = morningHumidity + _generateRandomValue(-5, 5);
      } else if (timestamp.hour >= 12 && timestamp.hour < 18) {
        temperature = afternoonTemp + _generateRandomValue(-2, 2);
        humidity = afternoonHumidity + _generateRandomValue(-5, 5);
      } else if (timestamp.hour >= 18 && timestamp.hour < 24) {
        temperature = eveningTemp + _generateRandomValue(-2, 2);
        humidity = eveningHumidity + _generateRandomValue(-5, 5);
      } else {
        temperature = nightTemp + _generateRandomValue(-2, 2);
        humidity = nightHumidity + _generateRandomValue(-5, 5);
      }

      // cria um novo monitor com a temperatura e umidade atuais e a data atual
      monitors
          .add(TemperatureHumidityMonitor(temperature: temperature,humidity: humidity, timestamp:timestamp));

      // avança a data em uma hora
      timestamp = timestamp.add(const Duration(hours: 1));
    }

    return monitors;
  }

// função auxiliar para gerar um valor aleatório dentro de um intervalo
  double _generateRandomValue(double min, double max) {
    final random = Random();
    return min + random.nextDouble() * (max - min);
  }
}
