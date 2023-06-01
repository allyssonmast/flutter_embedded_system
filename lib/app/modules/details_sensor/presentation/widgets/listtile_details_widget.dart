import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class WidgetListTileDetails extends StatelessWidget {
  final SensorEntity sensor;
  const WidgetListTileDetails({Key? key, required this.sensor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sensor.name!),
      subtitle: Text(DateFormat('HH:mm').format(sensor.timestamp)),
      trailing: CircleAvatar(
        child: Text(sensor.name!.contains('Temperatura')
            ? sensor.temperatura.toString()
            : sensor.humidade.toString()),
      ),
    );
  }
}
