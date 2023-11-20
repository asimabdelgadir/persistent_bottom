import 'package:flutter/material.dart';

/// Model class that holds the tab info for the [PersistentBottomBar]
class PersistentTabModel {
  final Widget tab;
  final GlobalKey<NavigatorState>? navigatorKey;
  final String title;
  final IconData icon;

  PersistentTabModel({
    required this.tab,
    this.navigatorKey,
    required this.title,
    required this.icon,
  });
}
