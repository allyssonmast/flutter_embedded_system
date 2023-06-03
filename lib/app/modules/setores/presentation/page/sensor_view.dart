import 'dart:async';

import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:embedded_system/app/modules/setores/presentation/widgets/adapter_sensor_widget.dart';
import 'package:embedded_system/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/setor_bloc.dart';
import '../widgets/setores_card.dart';

class SensorView extends StatefulWidget {
  const SensorView({Key? key}) : super(key: key);

  @override
  State<SensorView> createState() => _SensorViewState();
}

class _SensorViewState extends State<SensorView> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 10), (timer) {
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
    var setoresId = context.watch<SetorBloc>().state.idSetor;
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
            height: 100.sp,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8.sp),
              itemCount: listSetores.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return SetoresCard(
                  setores: listSetores[index],
                  select: () {
                    context
                        .read<SetorBloc>()
                        .add(SetorEvent.getSensores(listSetores[index].name));
                  },
                  isSelected: listSetores[index].name == setoresId,
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
              'Sensores de $setoresId',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          if (listSensores.isNotEmpty)
            GridView.builder(
              itemCount: listSensores.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                SensorEntity sensor = listSensores[index];
                return AdapterSensorWidget(
                  sensorEntity: sensor,
                  idSetor: setoresId!.toLowerCase(),
                );
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  maxCrossAxisExtent: 480,
                  mainAxisExtent: 215),
            )
          else
            const Padding(
              padding: EdgeInsets.only(top: 28.0),
              child: Center(
                child: Text('Nenhum sensor para esse setor'),
              ),
            )
        ],
      ),
    );
  }
}
