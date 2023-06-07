// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:embedded_system/app/modules/details_sensor/presentation/page/details_page.dart'
    as _i3;
import 'package:embedded_system/app/modules/historico_sensor/presentation/page/historico_page.dart'
    as _i2;
import 'package:embedded_system/app/modules/home/views/home_view.dart' as _i1;
import 'package:embedded_system/app/modules/login/presentation/page/login_page.dart'
    as _i6;
import 'package:embedded_system/app/modules/not_found_page/not_found_page.dart'
    as _i8;
import 'package:embedded_system/app/modules/setores/presentation/page/setors_page.dart'
    as _i4;
import 'package:embedded_system/app/modules/tracking/presentation/page/tracking_page.dart'
    as _i5;
import 'package:embedded_system/app/modules/tracking_details/presentation/page/tracking_details_page.dart'
    as _i7;
import 'package:flutter/material.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    HistoricoPageRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HistoricoPage(),
      );
    },
    DetailsPageRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetailsPageRouteArgs>(
          orElse: () => DetailsPageRouteArgs(
                sensorId: pathParams.getString('idSensor'),
                setorID: pathParams.getString('id'),
              ));
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailsPage(
          key: args.key,
          sensorId: args.sensorId,
          setorID: args.setorID,
        ),
      );
    },
    SetoresPageRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SetoresPage(),
      );
    },
    TrackingPageRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TrackingPage(),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    TrackingDetailsPageRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TrackingDetailsPageRouteArgs>(
          orElse: () => TrackingDetailsPageRouteArgs(
              trackingId: pathParams.getString('id')));
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.TrackingDetailsPage(
          key: args.key,
          trackingId: args.trackingId,
        ),
      );
    },
    UnknownRoutePageRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UnknownRoutePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i9.PageRouteInfo<void> {
  const HomeViewRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HistoricoPage]
class HistoricoPageRoute extends _i9.PageRouteInfo<void> {
  const HistoricoPageRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HistoricoPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoricoPageRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DetailsPage]
class DetailsPageRoute extends _i9.PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({
    _i10.Key? key,
    required String sensorId,
    required String setorID,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DetailsPageRoute.name,
          args: DetailsPageRouteArgs(
            key: key,
            sensorId: sensorId,
            setorID: setorID,
          ),
          rawPathParams: {
            'idSensor': sensorId,
            'id': setorID,
          },
          initialChildren: children,
        );

  static const String name = 'DetailsPageRoute';

  static const _i9.PageInfo<DetailsPageRouteArgs> page =
      _i9.PageInfo<DetailsPageRouteArgs>(name);
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({
    this.key,
    required this.sensorId,
    required this.setorID,
  });

  final _i10.Key? key;

  final String sensorId;

  final String setorID;

  @override
  String toString() {
    return 'DetailsPageRouteArgs{key: $key, sensorId: $sensorId, setorID: $setorID}';
  }
}

/// generated route for
/// [_i4.SetoresPage]
class SetoresPageRoute extends _i9.PageRouteInfo<void> {
  const SetoresPageRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SetoresPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetoresPageRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TrackingPage]
class TrackingPageRoute extends _i9.PageRouteInfo<void> {
  const TrackingPageRoute({List<_i9.PageRouteInfo>? children})
      : super(
          TrackingPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackingPageRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginPageRoute extends _i9.PageRouteInfo<void> {
  const LoginPageRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TrackingDetailsPage]
class TrackingDetailsPageRoute
    extends _i9.PageRouteInfo<TrackingDetailsPageRouteArgs> {
  TrackingDetailsPageRoute({
    _i10.Key? key,
    required String trackingId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          TrackingDetailsPageRoute.name,
          args: TrackingDetailsPageRouteArgs(
            key: key,
            trackingId: trackingId,
          ),
          rawPathParams: {'id': trackingId},
          initialChildren: children,
        );

  static const String name = 'TrackingDetailsPageRoute';

  static const _i9.PageInfo<TrackingDetailsPageRouteArgs> page =
      _i9.PageInfo<TrackingDetailsPageRouteArgs>(name);
}

class TrackingDetailsPageRouteArgs {
  const TrackingDetailsPageRouteArgs({
    this.key,
    required this.trackingId,
  });

  final _i10.Key? key;

  final String trackingId;

  @override
  String toString() {
    return 'TrackingDetailsPageRouteArgs{key: $key, trackingId: $trackingId}';
  }
}

/// generated route for
/// [_i8.UnknownRoutePage]
class UnknownRoutePageRoute extends _i9.PageRouteInfo<void> {
  const UnknownRoutePageRoute({List<_i9.PageRouteInfo>? children})
      : super(
          UnknownRoutePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoutePageRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
