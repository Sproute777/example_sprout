import 'package:example_sprout/theme/app_color.dart';
import 'package:example_sprout/theme/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../bloc/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        if (state is FailureSettingsState) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showMaterialBanner(
              MaterialBanner(
                padding: const EdgeInsets.all(20),
                content: Text(S.of(context).somethingWentWrong),
                leading: const Icon(Icons.error_outline_outlined),
                actions: <Widget>[
                  TextButton(
                    onPressed:
                        ScaffoldMessenger.of(context).hideCurrentMaterialBanner,
                    child: const Text('DISMISS'),
                  ),
                ],
              ),
            );
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _ThemeSlidingControl(),
              Expanded(child: _LogView())
            ],
          ),
        ),
      ),
    );
  }
}

class _ThemeSlidingControl extends StatelessWidget {
  const _ThemeSlidingControl({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).appTextCustomTheme;
    final colors = Theme.of(context).appColorCustomTheme;
    return SizedBox(
      height: 100,
      child: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (prev, current) => prev.themeMode != current.themeMode,
        builder: (context, state) {
          return CupertinoSlidingSegmentedControl<ThemeMode>(
              onValueChanged: (value) {
                if (value != null) {
                  HapticFeedback.lightImpact();
                  debugPrint('pressed');
                  context.read<SettingsBloc>().add(SettingsEvent.toggle(value));
                }
              },
              backgroundColor: Colors.blue,
              groupValue: state.themeMode,
              thumbColor: colors.container,
              children: <ThemeMode, Widget>{
                ThemeMode.system: Container(
                  alignment: Alignment.center,
                  height: 58,
                  child: Text(
                    S.of(context).system,
                    style: state.themeMode == ThemeMode.system
                        ? textTheme.selected
                        : textTheme.unselected,
                  ),
                ),
                ThemeMode.light: Container(
                  alignment: Alignment.center,
                  height: 58,
                  child: Text(
                    S.of(context).light,
                    style: state.themeMode == ThemeMode.light
                        ? textTheme.selected
                        : textTheme.unselected,
                  ),
                ),
                ThemeMode.dark: Container(
                  alignment: Alignment.center,
                  height: 58,
                  child: Text(
                    S.of(context).dark,
                    style: state.themeMode == ThemeMode.dark
                        ? textTheme.selected
                        : textTheme.unselected,
                  ),
                ),
              });
        },
      ),
    );
  }
}

class _LogView extends StatelessWidget {
  const _LogView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).appTextCustomTheme;
    final colors = Theme.of(context).appColorCustomTheme;
    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (prev, current) =>
          prev.historyLogs.length != current.historyLogs.length,
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: state.historyLogs.length,
          itemBuilder: (context, index) {
            return Container(
              color: colors.container,
              child: ListTile(
                title: Text(
                  S.of(context).dateLog(state.historyLogs[index].date),
                  style: textTheme.title,
                ),
                subtitle: Text(state.historyLogs[index].name),
              ),
            );
          },
        );
      },
    );
  }
}
