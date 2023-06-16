import 'package:example_sprout/settings/cubit/settings_cubit.dart';
import 'package:example_sprout/theme/app_color.dart';
import 'package:example_sprout/theme/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).appTextCustomTheme;
    final colors = Theme.of(context).appColorCustomTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return CupertinoSlidingSegmentedControl<ThemeMode>(
                onValueChanged: (value) {
                  if (value != null) {
                    HapticFeedback.lightImpact();
                    context.read<SettingsCubit>().toggleTheme(value);
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
      ),
    );
  }
}
