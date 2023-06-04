import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/helpers/shered_widgets/responsive.dart';
import 'package:embedded_system/app/modules/home/views/widget/drawer_widget.dart';
import 'package:embedded_system/app/modules/inicio/presentation/page/inicio_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../../routes/routes_imports.gr.dart';
import '../../setores/presentation/bloc/setor_bloc.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SetorBloc>(
          create: (_) => getIt<SetorBloc>(),
        ),
      ],
      child: AutoTabsRouter.pageView(
          animatePageTransition: false,
          physics: const NeverScrollableScrollPhysics(),
          routes: const [
            SetoresPageRoute(),
            HistoricoPageRoute(),
            TrackingPageRoute(),
          ],
          builder: (context, child, _) {
            return Scaffold(
              body: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1400),
                  child: ResponsiveWidget(
                    desktop: Row(
                      children: [
                        const DrawerWidget(),
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(8.0),
                            child: InicioPage(child: child),
                          ),
                        ),
                      ],
                    ),
                    tablet: Row(
                      children: [
                        Expanded(
                          child: InicioPage(child: child),
                        ),
                      ],
                    ),
                    mobile: InicioPage(child: child),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
