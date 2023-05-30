import 'package:embedded_system/app/modules/details_sensor/views/widgets/detais_widget_card.dart';
import 'package:embedded_system/app/modules/details_sensor/views/widgets/grafico_tempe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/details_sensor_controller.dart';

class DetailsSensorView extends GetView<DetailsSensorController> {
  const DetailsSensorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();
    return GetBuilder<DetailsSensorController>(
      autoRemove: false,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Detalhes do sensor'),
            centerTitle: true,
          ),
          body: controller.loding.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
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
                              firstDate: DateTime.now()
                                  .add(const Duration(days: -365)),
                              lastDate: DateTime.now(),
                            );
                            if (result != null) {
                              dateTime = result;
                              controller.update();
                              controller.fakeTemp(dateTime);
                            }
                          },
                          horizontalTitleGap: 4,
                          leading: const Icon(Icons.calendar_month_outlined),
                          title: Text(
                            'Dados para a data ${DateFormat('dd/MM/yyyy').format(dateTime)}',
                          ),
                        ),
                      ),
                      if (controller.lastSensor != null)
                        Row(
                          children: [
                            Expanded(
                              child: DetailsWidgetCard(
                                iconData: FontAwesomeIcons.temperatureHalf,
                                temperatura: 'Última temperatura',
                                valueTemperatura: '${controller.lastSensor!.temperatura} °',
                                idealValue: '27° até 35°',
                              ),
                            ),
                            Expanded(
                              child: DetailsWidgetCard(
                                iconData: Icons.water_drop,
                                temperatura: 'Última umidade',
                                valueTemperatura: '${controller.lastSensor!.humidade} %',
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
                      if (controller.lastSensor != null)
                        Text(
                          'Última medida as ${DateFormat('HH:mm   dd/MM/yyyy').format(controller.lastSensor!.timestamp)}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Theme.of(context).primaryColor),
                        ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      GraficoWidget(data: controller.listTemp),
                      ListView.builder(
                        itemCount: controller.listMaxAndMin.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          var sensor = controller.listMaxAndMin[index];

                          return ListTile(
                            title: Text(sensor.name!),
                            subtitle: Text(
                                DateFormat('HH:mm').format(sensor.timestamp)),
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
                        child: const ListTile(
                          subtitle: Text('Galinhas'),
                          title: Text(
                            'Perdas',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          trailing: CircleAvatar(
                            child: Text('5'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        );
      },
    );
  }
}
