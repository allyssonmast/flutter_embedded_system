import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  final Widget child;
  const InicioPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          !ResponsiveWidget.isDesktop(context) ? const DrawerWidget() : null,
      appBar: AppBar(
        title: const Text('Vitagema'),
      ),
      body: child,
    );
  }
}
