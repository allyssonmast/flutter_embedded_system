import 'package:auto_route/annotations.dart';
import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/modules/details_sensor/views/details_sensor_view.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:embedded_system/app/modules/sensores/presentation/page/setors_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

@RoutePage()
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWidget(
        desktop: Row(
          children: [
            DrawerWidget(),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: SetoresPage(),
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
          children: [
            Expanded(
              child: SetoresPage(),
            ),
            Expanded(
              child: DetailsSensorView(),
            ),
          ],
        ),
        mobile: SetoresPage(),
      ),
    );
  }
}
