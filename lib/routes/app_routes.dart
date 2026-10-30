import 'package:flcomp_sep2026/models/menu_options.dart';
import 'package:flcomp_sep2026/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/' : (BuildContext context) => const HomeScreen(),
    '/listtile' : (BuildContext context) => const ListtileScreen(),
    '/card' : (BuildContext context) => const CardScreen(),
    '/alert' : (BuildContext context) => const AlertScreen(),
  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listtile', name: 'Pantalla de ListTile', icon: Icons.list_alt_rounded, screen: const ListtileScreen()),
    MenuOptions(route: '/card', name: 'Pantalla de Cards', icon: Icons.card_membership_rounded, screen: const CardScreen()),
    MenuOptions(route: '/alert', name: 'Pantalla de Alertas', icon: Icons.warning_rounded, screen: const AlertScreen()),
  ];

}