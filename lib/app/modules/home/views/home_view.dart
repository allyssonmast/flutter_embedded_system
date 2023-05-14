import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/modules/details_sensor/views/details_sensor_view.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:embedded_system/app/modules/sensores/views/sensores_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        desktop: Row(
          children: const [
            DrawerWidget(),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: SensoresView(),
              ),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: DetailsSensorView(),
              ),
            ),
          ],
        ),
        tablet: Row(
          children: const [
            Expanded(
              child: SensoresView(),
            ),
            Expanded(
              child: DetailsSensorView(),
            ),
          ],
        ),
        mobile: const SensoresView(),
      ),
    );
  }
}
