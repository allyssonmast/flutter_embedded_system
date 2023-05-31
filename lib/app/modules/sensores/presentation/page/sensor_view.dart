import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/sensores/presentation/bloc/setor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'widgets/setores_card.dart';


class SensorView extends StatefulWidget {
  const SensorView({Key? key}) : super(key: key);

  @override
  State<SensorView> createState() => _SensorViewState();
}

class _SensorViewState extends State<SensorView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var listSetores = context.watch<SetorBloc>().state.setores ?? [];
    return Column(
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
              return SetoresCard(
                setores: listSetores[index],
                select: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                isSelected: selectedIndex == index,
              );
            },
          ),
        ),
        SizedBox(
          height: 12.sp,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 4.sp),
          child: Text(
            'Sensores',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        if (listSetores.isNotEmpty)
          ListView.builder(
              itemCount: listSetores[selectedIndex].listSensores.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                String value = listSetores[selectedIndex].listSensores[index];
                return ListTile(
                  onTap: () {
                    if (context.isPhone) {
                      context.router.navigateNamed('/detalhaes-sensor');
                    }
                  },
                  title: Text(value),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              })
      ],
    );
  }
}
