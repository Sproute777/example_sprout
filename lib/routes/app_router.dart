import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../utils/print_colors.dart';
import 'routes/routes.dart';

class AppGoRouter extends GoRouter {
  // final Auth _auth;

  AppGoRouter(/*this._auth*/)
      : super(
          routes: $appRoutes,
          initialLocation: const SettingsRoute().location,
          errorBuilder: const Page404Route().build,
          redirect: (context, goState) {
            debugPrint('$yellow ${goState.location} ${goState.pageKey} $reset');
          },
        ) {
    // _authSubscription = Auth.stream.listen((ok){
    //  if(!ok) go(LoginRoute();
    // }
  }
  // StreamSubscription? _authSubscription;
}
