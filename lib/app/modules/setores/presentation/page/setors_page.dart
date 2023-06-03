import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../helpers/shered_widgets/error_widget.dart';
import '../../../../helpers/shered_widgets/my_circular_indicator.dart';
import '../bloc/setor_bloc.dart';
import 'sensor_view.dart';

@RoutePage()
class SetoresPage extends StatelessWidget {
  const SetoresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<SetorBloc, SetorState>(
          builder: (context, state) {
            if (state.status.isInitial) {
              context.read<SetorBloc>().add(const SetorEvent.started());
              return const MyCircularIndicator();
            } else if (state.status.isLoading) {
              return const MyCircularIndicator();
            } else if (state.status.isError) {
              return const FailureWidget();
            }
            return const SensorView();
          },
        ));
  }
}
