import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../generated/l10n.dart';
import '../../routes/routes/routes.dart';

class MainTabsPage extends StatefulWidget {
  final Widget child;

  const MainTabsPage({Key? key, required this.child}) : super(key: key);

  @override
  State<MainTabsPage> createState() => _MainTabsPageState();
}

class _MainTabsPageState extends State<MainTabsPage> {
  int _selectedIndex(BuildContext context) {
    final location = GoRouter.of(context).location;
    if (location == const SettingsRoute().location) {
      return 0;
    } else if (location == const NextRoute().location) {
      return 1;
    }
    return 0;
  }

  void navigate(int index, BuildContext context) {
    switch (index) {
      case 0:
        const SettingsRoute().go(context);
      case 1:
        const NextRoute().go(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    S.of(context);
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: S.of(context).settings,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.business),
              label: S.of(context).next,
            ),
          ],
          currentIndex: _selectedIndex(context),
          selectedItemColor: Colors.blue,
          onTap: (index) => navigate(index, context),
        ),
      ),
    );
  }
}
