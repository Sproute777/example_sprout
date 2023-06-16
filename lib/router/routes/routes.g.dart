// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $page404Route,
      $mainTabsRoute,
    ];

RouteBase get $page404Route => GoRouteData.$route(
      path: '/page-404',
      factory: $Page404RouteExtension._fromState,
    );

extension $Page404RouteExtension on Page404Route {
  static Page404Route _fromState(GoRouterState state) => const Page404Route();

  String get location => GoRouteData.$location(
        '/page-404',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $mainTabsRoute => ShellRouteData.$route(
      factory: $MainTabsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/settings',
          factory: $SettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/next',
          factory: $NextRouteExtension._fromState,
        ),
      ],
    );

extension $MainTabsRouteExtension on MainTabsRoute {
  static MainTabsRoute _fromState(GoRouterState state) => const MainTabsRoute();
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $NextRouteExtension on NextRoute {
  static NextRoute _fromState(GoRouterState state) => const NextRoute();

  String get location => GoRouteData.$location(
        '/next',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
