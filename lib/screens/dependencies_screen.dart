import 'package:flcomp_sep2026/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DependenciesScreen extends StatefulWidget {
   
  const DependenciesScreen({Key? key}) : super(key: key);

  @override
  State<DependenciesScreen> createState() => _DependenciesScreenState();
}

class _DependenciesScreenState extends State<DependenciesScreen> {

  int _index = 0;

  static const _views = [
    _HomeView(),
    _SearchView(),
    _ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependencias'),
      ),
      body: IndexedStack(
        index: _index,
        children: _views,
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        tabBackgroundColor: Colors.grey[300]!,
        activeColor: Colors.black,
        rippleColor: AppThemes.primary,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        gap: 5,
        selectedIndex: _index,
        onTabChange: (value){
          setState(() {
            _index = value;
          });
        },
        tabs: [
          GButton(
            icon: Icons.home_rounded,
            text: 'Menu',
          ),
          GButton(
            icon: Icons.search_rounded,
            text: 'Buscar',
          ),
          GButton(
            icon: Icons.person_rounded,
            text: 'Mi Perfil',
          ),
        ],
      )
    );
  }
}

//Vista de home
class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('1'),
    );
  }
}

//Vista del buscador
class _SearchView extends StatelessWidget {
  const _SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('2'),
    );
  }
}

//Vista del perfil
class _ProfileView extends StatelessWidget {
  const _ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('3'),
    );
  }
}