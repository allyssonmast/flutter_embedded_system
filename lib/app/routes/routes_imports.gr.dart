// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:embedded_system/app/modules/details_sensor/presentation/page/details_page.dart'
    as _i1;
import 'package:embedded_system/app/modules/home/views/home_view.dart' as _i2;
import 'package:embedded_system/app/modules/login/presentation/page/login_page.dart'
    as _i3;
import 'package:embedded_system/app/modules/perdas/presentation/page/perdas_page.dart'
    as _i5;
import 'package:embedded_system/app/modules/setores/presentation/page/setors_page.dart'
    as _i4;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DetailsPageRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetailsPageRouteArgs>(
          orElse: () =>
              DetailsPageRouteArgs(sensorId: pathParams.getString('id')));
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailsPage(
          key: args.key,
          sensorId: args.sensorId,
        ),
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
    SetoresPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SetoresPage(),
      );
    },
    PerdasPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PerdasPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailsPage]
class DetailsPageRoute extends _i6.PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({
    _i7.Key? key,
    required String sensorId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DetailsPageRoute.name,
          args: DetailsPageRouteArgs(
            key: key,
            sensorId: sensorId,
          ),
          rawPathParams: {'id': sensorId},
          initialChildren: children,
        );

  static const String name = 'DetailsPageRoute';

  static const _i6.PageInfo<DetailsPageRouteArgs> page =
      _i6.PageInfo<DetailsPageRouteArgs>(name);
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({
    this.key,
    required this.sensorId,
  });

  final _i7.Key? key;

  final String sensorId;

  @override
  String toString() {
    return 'DetailsPageRouteArgs{key: $key, sensorId: $sensorId}';
  }
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
/// [_i4.SetoresPage]
class SetoresPageRoute extends _i6.PageRouteInfo<void> {
  const SetoresPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SetoresPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetoresPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PerdasPage]
class PerdasPageRoute extends _i6.PageRouteInfo<void> {
  const PerdasPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PerdasPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PerdasPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
