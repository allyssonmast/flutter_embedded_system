// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:embedded_system/app/modules/details_sensor/views/details_sensor_view.dart'
    as _i1;
import 'package:embedded_system/app/modules/home/views/home_view.dart' as _i2;
import 'package:embedded_system/app/modules/login/presentation/page/login_page.dart'
    as _i3;
import 'package:embedded_system/app/modules/perdas/views/perdas_view.dart'
    as _i4;
import 'package:embedded_system/app/modules/sensores/presentation/page/setors_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DetailsSensorViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DetailsSensorView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    PerdasViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PerdasView(),
      );
    },
    SetoresPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SetoresPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailsSensorView]
class DetailsSensorViewRoute extends _i6.PageRouteInfo<void> {
  const DetailsSensorViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DetailsSensorViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsSensorViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i6.PageRouteInfo<void> {
  const HomeViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<void> {
  const LoginPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PerdasView]
class PerdasViewRoute extends _i6.PageRouteInfo<void> {
  const PerdasViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PerdasViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'PerdasViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SetoresPage]
class SetoresPageRoute extends _i6.PageRouteInfo<void> {
  const SetoresPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SetoresPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetoresPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
