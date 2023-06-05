class SensorEntity {
  String? name;
  String dispositivo;
  DateTime timestamp;
  double temperatura;
  double humidade;

  factory SensorEntity.fromJson(Map<String, dynamic> json) => SensorEntity(
        timestamp: DateTime.parse(json['timestemp']),
        name: '',
        dispositivo: json['Dispositivo']??'',
        temperatura: json['temperatura'] is int
            ? (json['temperatura'] as int).toDouble()
            : json['temperatura'],
        humidade: json['umidade'] is int
            ? (json['umidade'] as int).toDouble()
            : json['umidade'],
      );

  SensorEntity(
      {this.name,
      required this.dispositivo,
      required this.timestamp,
      required this.temperatura,
      required this.humidade});
}
