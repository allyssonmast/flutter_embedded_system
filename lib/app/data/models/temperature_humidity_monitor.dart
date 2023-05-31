class TemperatureHumidityMonitor {
  final double temperature;
  final double humidity;
  final DateTime timestamp;

  TemperatureHumidityMonitor({
    required this.temperature,
    required this.humidity,
    required this.timestamp,
  });

  factory TemperatureHumidityMonitor.fromJson(Map<String, dynamic> json) {
    return TemperatureHumidityMonitor(
      temperature: json['temperature'],
      humidity: json['humidity'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'temperature': temperature,
      'humidity': humidity,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
