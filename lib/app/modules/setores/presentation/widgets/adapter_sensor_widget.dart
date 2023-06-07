import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../../../routes/routes_imports.gr.dart';

class AdapterSensorWidget extends StatelessWidget {
  final SensorEntity sensorEntity;
  final String idSetor;
  const AdapterSensorWidget(
      {Key? key, required this.sensorEntity, required this.idSetor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        color: sensorEntity.temperatura > 34.0 ? Colors.red.shade700 : null,
        child: InkWell(
          onTap: () {
            context.router.push(DetailsPageRoute(
                sensorId:sensorEntity.dispositivo.toLowerCase() ,
                setorID:idSetor ));
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.temperatureHalf,
                              size: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Ultima Temperatura',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              '${sensorEntity.temperatura}°',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text('Ideal: 27° - 35°'),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const FaIcon(
                              Icons.water_drop,
                              size: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Ultima umidade',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              '${sensorEntity.humidade}%',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text('Ideal: 50% - 80%'),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'Última medida as ${DateFormat('HH:mm   dd/MM/yyyy').format(sensorEntity.timestamp)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ],
                ),
               const Positioned(
                  top: 0,
                  right: 0,
                  child: Text('1'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
