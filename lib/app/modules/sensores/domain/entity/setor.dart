import 'package:flutter/material.dart';

class Setor {
  final String name;
  final IconData icon;
  final List<String> listSensores;

  Setor({
    required this.name,
    required this.icon,
    required this.listSensores,
  });

  factory Setor.fromJson(Map<String, dynamic> json) => Setor(
        icon: IconData(
          json['iconData'],
          fontFamily: 'MaterialIcons',
        ),
        name: json['name'],
        listSensores: List.from(json['listSensores']),
      );
}
