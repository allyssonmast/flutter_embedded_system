class Sensor {
  String? name;
  final DateTime timestamp;
  final double temperatura;
  final double humidade;

  Sensor({
    this.name,
    required this.timestamp,
    required this.temperatura,
    required this.humidade,
  });
  factory Sensor.fromJson(Map<String, dynamic> json) => Sensor(
        timestamp: DateTime.parse(json['timestemp']),
        name: '',
        temperatura: json['temperatura'] is int
            ? (json['temperatura'] as int).toDouble()
            : json['temperatura'],
        humidade: json['umidade'] is int
            ? (json['umidade'] as int).toDouble()
            : json['umidade'],
      );
}
