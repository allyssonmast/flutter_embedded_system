import 'package:embedded_system/app/data/models/setores.dart';
import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/helpers/shered_widgets/search_bar.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:embedded_system/app/modules/sensores/views/widgets/setores_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/sensores_controller.dart';

class SensoresView extends GetView<SensoresController> {
  const SensoresView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var listSetores = [
      Setores(icon: Icons.pets_outlined, name: 'Granja'),
      Setores(icon: Icons.factory, name: 'Fábrica'),
      Setores(icon: Icons.storage, name: 'Armazenamento'),
    ];

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
                    itemCount: listSetores.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return SetoresCard(setores: listSetores[index]);
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
                SearchBar(
                  controller: TextEditingController(),
                ),
                ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (_,index){
                  return ListTile(
                    selected: index==0,
                    onTap: (){},
                    title: Text('Sensor ${index + 1}'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  );
                })
              ],
            ),
          );
        });
  }
}
