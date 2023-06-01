import 'package:auto_route/annotations.dart';
import 'package:embedded_system/app/modules/perdas/presentation/bloc/perdas_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection.dart';
import '../views/perdas_view.dart';

@RoutePage()
class PerdasPage extends StatelessWidget {
  const PerdasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<PerdasBloc>(
        create: (_) => getIt<PerdasBloc>(),
        child: BlocBuilder<PerdasBloc, PerdasState>(
          builder: (context, state) {
            return const PerdasView();
          },
        ),
      ),
    );
  }
}
