import 'package:flcomp_sep2026/models/menu_options.dart';
import 'package:flcomp_sep2026/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/listtile' : (BuildContext context) => const ListtileScreen(),
    '/' : (BuildContext context) => const HomeScreen(),
  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listtile', name: 'Pantalla de ListTile', icon: Icons.list_alt_rounded, screen: const ListtileScreen()),
  ];

}