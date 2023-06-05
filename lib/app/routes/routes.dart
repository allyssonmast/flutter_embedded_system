part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginPageRoute.page, path: LOGIN),
        AutoRoute(guards: [AuthGuard()],page: DetailsPageRoute.page, path: DETALHES_SENSOR),
        AutoRoute(guards: [AuthGuard()],page: TrackingDetailsPageRoute.page, path: DETAILS_TRACKING),
        AutoRoute(
          initial: true,
          page: HomeViewRoute.page,
          path: DASHBOARD,
          guards: [AuthGuard()],
          children: [
            RedirectRoute(path: '', redirectTo: SETORES),
            AutoRoute(
              page: SetoresPageRoute.page,
              path: SETORES,
            ),
            AutoRoute(page: HistoricoPageRoute.page, path: HISTORICO),
            AutoRoute(
              page: TrackingPageRoute.page,
              path: TRACKING,
            ),
          ],
        )
      ];
}
