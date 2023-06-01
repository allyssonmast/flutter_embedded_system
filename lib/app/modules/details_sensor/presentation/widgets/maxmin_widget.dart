import 'package:flutter/material.dart';

import '../../domain/entity/sensor.dart';
import 'listtile_details_widget.dart';

class MaxMinWidget extends StatefulWidget {
  final List<SensorEntity> list;
  const MaxMinWidget({Key? key, required this.list}) : super(key: key);

  @override
  State<MaxMinWidget> createState() => _MaxMinWidgetState();
}

class _MaxMinWidgetState extends State<MaxMinWidget> {
  late SensorEntity sensorEntity;
  late SensorEntity sensorEntity1;
  late SensorEntity sensorEntity2;
  late SensorEntity sensorEntity3;
  List<SensorEntity> list = [];
  void findMaxTemperature() {
    sensorEntity = widget.list.reduce((max, current) =>
        max.temperatura > current.temperatura ? max : current);
    sensorEntity.name = 'Temperatura Máx';
    sensorEntity1 = widget.list.reduce((min, current) =>
        min.temperatura < current.temperatura ? min : current);

    sensorEntity1.name = 'Temperatura Mín';
    sensorEntity2 = widget.list.reduce(
        (max, current) => max.humidade > current.humidade ? max : current);
    sensorEntity2.name = 'Umidade Máx';

  }

  @override
  void initState() {
    super.initState();
    findMaxTemperature();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        WidgetListTileDetails(sensor: sensorEntity,),
        WidgetListTileDetails(sensor: sensorEntity1,),
        WidgetListTileDetails(sensor: sensorEntity2,),
      ],
    );
  }
}
