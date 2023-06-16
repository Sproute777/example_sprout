part of 'routes.dart';

// final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<MainTabsRoute>(routes: <TypedRoute<RouteData>>[
  TypedGoRoute<SettingsRoute>(
    path: '/settings',
  ),
  TypedGoRoute<NextRoute>(
    path: '/next',
  ),
])
class MainTabsRoute extends ShellRouteData {
  const MainTabsRoute();

  // static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Page<void> pageBuilder(
          BuildContext context, GoRouterState state, Widget navigator) =>
      NoTransitionPage<void>(child: MainTabsPage(child: navigator));
}

class NextRoute extends GoRouteData {
  const NextRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: NextPage());
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: SettingsPage());
}
