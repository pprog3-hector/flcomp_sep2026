import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuOptions {

  final String route;
  final String name;
  final FaIconData icon;
  final Widget screen;

  MenuOptions({
    required this.route, 
    required this.name, 
    required this.icon, 
    required this.screen
  });
  
}