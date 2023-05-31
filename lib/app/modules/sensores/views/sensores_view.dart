import 'package:auto_route/annotations.dart';
import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:embedded_system/app/modules/sensores/views/widgets/setores_card.dart';
import 'package:embedded_system/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/sensores_controller.dart';

@RoutePage()
class SensoresView extends GetView<SensoresController> {
  const SensoresView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SensoresController>(
        autoRemove: false,
        builder: (_) {
          return Scaffold(
            drawer: !ResponsiveWidget.isDesktop(context)
                ? const DrawerWidget()
                : null,
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Vitagema'),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                  child: Text(
                    'Setores',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    itemCount: controller.listSetores.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return SetoresCard(
                        setores: controller.listSetores[index],
                        select: () {
                          controller.selectedIndex.value = index;
                          controller.update();
                        },
                        isSelected: controller.selectedIndex.value == index,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12.sp,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 4.sp),
                  child: Text(
                    'Sensores',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                if (controller.listSetores.isNotEmpty)
                  ListView.builder(
                      itemCount: controller
                          .listSetores[controller.selectedIndex.value]
                          .listSensores
                          .length,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        String value = controller
                            .listSetores[controller.selectedIndex.value]
                            .listSensores[index];
                        return ListTile(
                          selected: index == 0,
                          onTap: () {
                            if (context.isPhone) {
                              Get.toNamed(Routes.DETAILS_SENSOR,
                                  arguments: value);
                            }
                          },
                          title: Text(value),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        );
                      })
              ],
            ),
          );
        });
  }
}
