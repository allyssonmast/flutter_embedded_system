import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:embedded_system/app/modules/historico_sensores/domain/entity/perda.dart';
import 'package:embedded_system/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../bloc/details_sensor_bloc.dart';
import '../widgets/detais_widget_card.dart';
import '../widgets/grafico_tempe.dart';

class DetailsSensorView extends StatefulWidget {
  final String sensorId;
  final String setorId;
  const DetailsSensorView({
    Key? key,
    required this.sensorId,
    required this.setorId,
  }) : super(key: key);

  @override
  State<DetailsSensorView> createState() => _DetailsSensorViewState();
}

class _DetailsSensorViewState extends State<DetailsSensorView> {
  var dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    List<SensorEntity> listSensores =
        context.watch<DetailsSensorBloc>().state.sensores ?? [];
    Perda? perda = context.watch<DetailsSensorBloc>().state.perda;
    var sensorLast = _searchDerivadas(listSensores);
    print("${widget.setorId}/${widget.sensorId}");
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Detalhes do sensor',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              widget.setorId,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0.sp),
            child: CircleAvatar(
              child: IconButton(
                onPressed: () async {
                  dateTime = DateTime.now();

                  context.read<DetailsSensorBloc>().add(
                      DetailsSensorEvent.featData(
                          "${widget.setorId}/${widget.sensorId}", dateTime));
                },
                icon: const Icon(Icons.update_outlined),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: ListTile(
                onTap: () async {
                  var result = await showDatePicker(
                    context: context,
                    initialDate: dateTime,
                    locale: const Locale('pt', 'BR'),
                    firstDate: DateTime.now().add(const Duration(days: -365)),
                    lastDate: DateTime.now(),
                  );
                  if (result != null) {
                    dateTime = result;
                    getIt<DetailsSensorBloc>().add(
                        DetailsSensorEvent.featData(widget.sensorId, dateTime));
                  }
                },
                horizontalTitleGap: 4,
                leading: const Icon(Icons.calendar_month_outlined),
                title: Text(
                  'Dados para a data ${DateFormat('dd/MM/yyyy').format(dateTime)}',
                ),
              ),
            ),
            if (listSensores.isNotEmpty)
              Row(
                children: [
                  Expanded(
                    child: DetailsWidgetCard(
                      iconData: FontAwesomeIcons.temperatureHalf,
                      temperatura: 'Última temperatura',
                      valueTemperatura: '${listSensores.last.temperatura} °',
                      idealValue: '27° até 35°',
                    ),
                  ),
                  Expanded(
                    child: DetailsWidgetCard(
                      iconData: Icons.water_drop,
                      temperatura: 'Última umidade',
                      valueTemperatura: '${listSensores.last.humidade} %',
                      idealValue: '50 % até 80 %',
                    ),
                  ),
                ],
              )
            else
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  'Nenhum dado salvo até o momento',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.red),
                ),
              ),
            if (listSensores.isNotEmpty)
              Text(
                'Última medida as ${DateFormat('HH:mm   dd/MM/yyyy').format(listSensores.last.timestamp)}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColor),
              ),
            SizedBox(
              height: 10.sp,
            ),
            GraficoWidget(data: listSensores),
            ListView.builder(
              itemCount: sensorLast.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                var sensor = sensorLast[index];

                return ListTile(
                  title: Text(sensor.name!),
                  subtitle: Text(DateFormat('HH:mm').format(sensor.timestamp)),
                  trailing: CircleAvatar(
                    child: Text(sensor.name!.contains('Temperatura')
                        ? sensor.temperatura.toString()
                        : sensor.humidade.toString()),
                  ),
                );
              },
            ),
            Card(
              margin: EdgeInsets.all(8.0.sp),
              child: ListTile(
                subtitle: Text(perda != null
                    ? perda.isEgg
                        ? 'Ovos'
                        : 'Galinhas'
                    : 'Sem perdas'),
                title: const Text(
                  'Perdas',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                trailing: CircleAvatar(
                  child: Text(perda != null ? perda.count.toString() : '0'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<SensorEntity> _searchDerivadas(List<SensorEntity> list) {
  if (list.isNotEmpty) {
    List<SensorEntity> newlist = [];
    newlist.add(findMaxTemperature(list));
    newlist.add(findMinTemperature(list));
    // newlist.add(findMaxHumidity(list));
    //newlist.add( findMinHumidity(list));

    return newlist;
  } else {
    return [];
  }
}

SensorEntity findMaxTemperature(List<SensorEntity> dataList) {
  SensorEntity sensor = dataList.reduce(
      (max, current) => max.temperatura > current.temperatura ? max : current);
  sensor.name = 'Temperatura Máx';

  return sensor;
}

SensorEntity findMinTemperature(List<SensorEntity> dataList) {
  var sensor = dataList.reduce(
      (min, current) => min.temperatura < current.temperatura ? min : current);

  sensor.name = 'Temperatura Mín';

  return sensor;
}

SensorEntity findMaxHumidity(List<SensorEntity> dataList) {
  var sensor = dataList.reduce(
      (max, current) => max.humidade > current.humidade ? max : current);
  sensor.name = 'Umidade Máx';

  return sensor;
}

SensorEntity findMinHumidity(List<SensorEntity> dataList) {
  var sensor = dataList.reduce(
      (min, current) => min.humidade < current.humidade ? min : current);
  sensor.name = 'Umidade Mín';

  return sensor;
}
