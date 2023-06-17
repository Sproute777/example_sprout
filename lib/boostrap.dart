import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'utils/print_colors.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    debugPrint('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    debugPrint('$red onError(${bloc.runtimeType}, $error, $stackTrace)');
    debugPrint(reset);
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    debugPrint(details.toString());
  };

  runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) =>
        debugPrint('${error.toString()} ${stackTrace.toString()}'),
  );
}
