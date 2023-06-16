import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:history_log_repository/history_log.dart';
import 'package:settings_repository/settings_repository.dart';

import '../../generated/l10n.dart';
import '../../router/app_router.dart';
import '../../settings/cubit/settings_cubit.dart';
import '../../theme/app_theme.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.initialSettings,
    required this.settingsRepository,
    required this.historyLogRepository,
  });

  final Settings initialSettings;
  final SettingsRepository settingsRepository;
  final HistoryLogRepository historyLogRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: settingsRepository),
        RepositoryProvider.value(value: historyLogRepository),
      ],
      child: BlocProvider(
        create: (context) => SettingsCubit(
            settingsRepository, historyLogRepository, initialSettings)
          ..init(),
        child: _AppView(appGoRouter: AppGoRouter()),
      ),
    );
  }
}

class _AppView extends StatelessWidget {
  final GoRouter appGoRouter;
  const _AppView({super.key, required this.appGoRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: const AppTheme().themeData,
      darkTheme: const AppDarkTheme().themeData,
      themeMode:
          context.select<SettingsCubit, ThemeMode>((s) => s.state.themeMode),
      routeInformationProvider: appGoRouter.routeInformationProvider,
      routerDelegate: appGoRouter.routerDelegate,
      routeInformationParser: appGoRouter.routeInformationParser,
      title: 'Example',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
