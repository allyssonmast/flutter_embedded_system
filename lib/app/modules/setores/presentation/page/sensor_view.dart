import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:embedded_system/app/modules/details_sensor/presentation/bloc/details_sensor_bloc.dart';
import 'package:embedded_system/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../routes/routes_imports.gr.dart';
import '../bloc/setor_bloc.dart';
import '../widgets/setores_card.dart';

class SensorView extends StatefulWidget {
  const SensorView({Key? key}) : super(key: key);

  @override
  State<SensorView> createState() => _SensorViewState();
}

class _SensorViewState extends State<SensorView> {
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (getIt<SetorBloc>().state.idSetor != null) {
        getIt<SetorBloc>()
            .add(SetorEvent.getSensores(getIt<SetorBloc>().state.idSetor!));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var listSetores = context.watch<SetorBloc>().state.setores ?? [];
    var listSensores = context.watch<SetorBloc>().state.listSensores;
    return SingleChildScrollView(
      child: Column(
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
                    context
                        .read<SetorBloc>()
                        .add(SetorEvent.getSensores(listSetores[index].name));
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
          if (listSensores.isNotEmpty)
            ListView.builder(
                itemCount: listSensores.length,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  SensorEntity sensor = listSensores[index];
                  return ListTile(
                    onTap: () {
                      if (ResponsiveWidget.isMobile(context)) {
                        context.router.push(
                            DetailsPageRoute(sensorId: sensor.dispositivo));
                      } else {
                        getIt<DetailsSensorBloc>().add(
                          DetailsSensorEvent.featData(
                            sensor.dispositivo,
                            DateTime.now(),
                          ),
                        );
                      }
                    },
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(sensor.temperatura.toString()),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(sensor.humidade.toString())
                      ],
                    ),
                    title: Text(sensor.dispositivo),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  );
                })
        ],
      ),
    );
  }
}
