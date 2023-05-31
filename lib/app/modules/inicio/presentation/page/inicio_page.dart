import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:embedded_system/app/routes/routes_imports.gr.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
        animatePageTransition:false,
        physics:const NeverScrollableScrollPhysics(),
        routes: const [
          SetoresPageRoute(),
          PerdasViewRoute(),
        ],
        builder: (context, child, _) {
          return Scaffold(
            drawer: const DrawerWidget(),
            appBar: AppBar(
                title: const Text('Vitagema'),
                leading: const AutoLeadingButton()),
            body: child,
          );
        });
  }
}
