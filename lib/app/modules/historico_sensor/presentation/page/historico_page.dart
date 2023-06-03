import 'package:auto_route/annotations.dart';
import 'package:embedded_system/app/modules/historico_sensor/presentation/page/historico_view.dart';
import 'package:embedded_system/app/modules/setores/presentation/bloc/setor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection.dart';
import '../../../../helpers/shered_widgets/error_widget.dart';
import '../../../../helpers/shered_widgets/my_circular_indicator.dart';

@RoutePage()
class HistoricoPage extends StatelessWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SetorBloc>(
        create: (_) => getIt<SetorBloc>(),
        child: BlocBuilder<SetorBloc, SetorState>(
          builder: (context, state) {
            if (state.status.isInitial) {

              return const MyCircularIndicator();
            } else if (state.status.isLoading) {
              return const MyCircularIndicator();
            } else if (state.status.isError) {
              return const FailureWidget();
            }
            return const HistoricoView();
          },
        ),
      ),
    );
  }
}
