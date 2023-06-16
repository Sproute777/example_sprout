import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
        body: Center(
      child: Text(S.of(context).onWorld(isLight ? 'light' : 'dark')),
    ));
  }
}
