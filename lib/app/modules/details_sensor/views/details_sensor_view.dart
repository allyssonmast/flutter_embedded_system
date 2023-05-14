import 'package:embedded_system/app/modules/details_sensor/views/widgets/detais_widget_card.dart';
import 'package:embedded_system/app/modules/details_sensor/views/widgets/grafico_tempe.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/details_sensor_controller.dart';

class DetailsSensorView extends GetView<DetailsSensorController> {
  const DetailsSensorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsSensorController>(
      autoRemove: false,
      init: Get.put(DetailsSensorController()),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Detalhes do sensor'),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: const [
                  Expanded(
                    child: DetailsWidgetCard(
                      temperatura: 'interna',
                      valueTemperatura: '32°',
                      idealValue: '27° até 35°',
                    ),
                  ),
                  Expanded(
                    child: DetailsWidgetCard(
                      temperatura: 'externa',
                      valueTemperatura: '27°',
                      idealValue: '25° até 35°',
                    ),
                  ),
                ],
              ),
             GraficoWidget(data: controller.listTemp)
            ],
          ),
        );
      }
    );
  }
}
