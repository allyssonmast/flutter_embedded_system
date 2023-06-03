import 'package:auto_route/annotations.dart';
import 'package:embedded_system/app/helpers/shered_widgets/snackbar.dart';
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
        body: BlocConsumer<SetorBloc, SetorState>(
      listener: (contex, state) {
        if (state.status.isError) {
          showSnackbar(context, state.errorMessage ?? 'Erro');
        }
        if (state.status.isErrorBack) {
          showSnackbar(context, 'Você não está conectado a rede local!');
        }
      },
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
