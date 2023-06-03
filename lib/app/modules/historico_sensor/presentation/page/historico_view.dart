import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/setores/presentation/bloc/setor_bloc.dart';
import 'package:embedded_system/app/modules/setores/presentation/widgets/setores_list.dart';
import 'package:flutter/material.dart';

import '../../../../../injection.dart';
import '../../../../routes/routes_imports.gr.dart';

class HistoricoView extends StatefulWidget {
  const HistoricoView({Key? key}) : super(key: key);

  @override
  State<HistoricoView> createState() => _HistoricoViewState();
}

class _HistoricoViewState extends State<HistoricoView> {
  var list = getIt<SetorBloc>().state.setores ?? [];
  int selectedIndex = 0;
  var listSensores = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SetoresListView(
            list: list,
            title: 'Histórico dos sensores',
            name: list[selectedIndex].name,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
          ),
          if (list.isNotEmpty)
            ListView.builder(
              itemCount: list[selectedIndex].listSensores.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                String value = list[selectedIndex].listSensores[index];
                return ListTile(
                  onTap: () {
                    context.router
                        .push(DetailsPageRoute(sensorId: value, setorID: ''));
                  },
                  title: Text(value),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              },
            )
        ],
      ),
    );
  }
}
