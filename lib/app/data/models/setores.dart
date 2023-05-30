import 'package:flutter/cupertino.dart';

class Setores {
  final IconData icon;
  final String name;
  final List<String> listSensores;

  Setores({
    required this.icon,
    required this.name,
    required this.listSensores,
  });
  factory Setores.fromJson(Map<String, dynamic> json) => Setores(
        icon: IconData(json['iconData'], fontFamily: 'MaterialIcons',),
        name: json['name'],
        listSensores: List.from(json['listSensores']),
      );
}
