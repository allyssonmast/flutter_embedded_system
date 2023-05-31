import 'package:auto_route/annotations.dart';
import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:embedded_system/app/modules/inicio/presentation/page/inicio_page.dart';
import 'package:flutter/material.dart';

import '../../details_sensor/presentation/page/details_page.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: const ResponsiveWidget(
            desktop: Row(
              children: [
                DrawerWidget(),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(8.0),
                    child: InicioPage(),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(8.0),
                    child: DetailsPage(
                      sensorId: 'LORA32_1',
                    ),
                  ),
                ),
              ],
            ),
            tablet: Row(
              children: [
                Expanded(
                  child: InicioPage(),
                ),
                Expanded(
                  child: DetailsPage(
                    sensorId: 'LORA32_1',
                  ),
                ),
              ],
            ),
            mobile: InicioPage(),
          ),
        ),
      ),
    );
  }
}
