import 'package:flutter/material.dart';
import 'package:persistent_bottom/models/persistent_model.dart';
import 'package:persistent_bottom/persistent_bottom_bar.dart';
import 'package:persistent_bottom/taps/tap1.dart';
import 'package:persistent_bottom/taps/tap2.dart';
import 'package:persistent_bottom/taps/tap3.dart';
import 'package:persistent_bottom/taps/tap4.dart';

class HomePage extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();
  final _tab4navigatorKey = GlobalKey<NavigatorState>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBar(
      items: [
        PersistentTabModel(
          tab: const TabPage1(),
          icon: Icons.home,
          title: 'Home',
          navigatorKey: _tab1navigatorKey,
        ),
        PersistentTabModel(
          tab: const TabPage2(),
          icon: Icons.search,
          title: 'Search',
          navigatorKey: _tab2navigatorKey,
        ),
        PersistentTabModel(
          tab: const TabPage3(),
          icon: Icons.person,
          title: 'Profile',
          navigatorKey: _tab3navigatorKey,
        ),
        PersistentTabModel(
          tab: const TabPage4(),
          icon: Icons.settings,
          title: 'Settings',
          navigatorKey: _tab4navigatorKey,
        ),
      ],
    );
  }
}
