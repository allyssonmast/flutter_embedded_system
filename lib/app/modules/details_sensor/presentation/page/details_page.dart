import 'package:auto_route/annotations.dart';
import 'package:embedded_system/app/modules/details_sensor/presentation/bloc/details_sensor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection.dart';
import '../../../../helpers/shered_widgets/error_widget.dart';
import '../../../../helpers/shered_widgets/my_circular_indicator.dart';
import 'details_sensor_view_2.dart';

@RoutePage()
class DetailsPage extends StatefulWidget {
  const DetailsPage(
      {Key? key,
      @PathParam('idSensor') required this.sensorId,
      @PathParam('id') required this.setorID})
      : super(key: key);
  final String sensorId;
  final String setorID;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<DetailsSensorBloc>(
        create: (_) => getIt<DetailsSensorBloc>(),
        child: BlocBuilder<DetailsSensorBloc, DetailsSensorState>(
          builder: (context, state) {
            if (state.status.isInitial) {
              context.read<DetailsSensorBloc>().add(DetailsSensorEvent.featData(
                  "${widget.setorID}/${widget.sensorId}", dateTime));
              return const MyCircularIndicator();
            } else if (state.status.isLoading) {
              return const MyCircularIndicator();
            } else if (state.status.isError) {
              return const FailureWidget();
            }
            return DetailsSensorView(
              setorId: widget.setorID,
              sensorId: widget.sensorId,
            );
          },
        ),
      ),
    );
  }
}
