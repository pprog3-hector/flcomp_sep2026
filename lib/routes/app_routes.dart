import 'package:flcomp_sep2026/models/menu_options.dart';
import 'package:flcomp_sep2026/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppRoutes {

  static const initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/' : (BuildContext context) => const HomeScreen(),
    '/listtile' : (BuildContext context) => const ListtileScreen(),
    '/card' : (BuildContext context) => const CardScreen(),
    '/alert' : (BuildContext context) => const AlertScreen(),
    '/dependencies' : (BuildContext context) => const DependenciesScreen(),
    '/container' : (BuildContext context) => const ContainerScreen(),
  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listtile', name: 'Pantalla de ListTile', icon: FontAwesomeIcons.solidRectangleList, screen: const ListtileScreen()),
    MenuOptions(route: '/card', name: 'Pantalla de Cards', icon: FontAwesomeIcons.solidAddressCard, screen: const CardScreen()),
    MenuOptions(route: '/alert', name: 'Pantalla de Alertas', icon: FontAwesomeIcons.triangleExclamation, screen: const AlertScreen()),
    MenuOptions(route: '/dependencies', name: 'Pantalla de Dependencias', icon: FontAwesomeIcons.cube, screen: const DependenciesScreen()),
    MenuOptions(route: '/container', name: 'Pantalla de Container', icon: FontAwesomeIcons.boxOpen, screen: const ContainerScreen()),
  ];

}