import 'package:flcomp_sep2026/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        //Se colocan guiones bajos cuando no se necesita del context y/o index
        separatorBuilder: (_, _) => const Divider(), 
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(AppRoutes.menuOptions[index].name),
            leading: FaIcon(AppRoutes.menuOptions[index].icon),
            onTap: () => Navigator.pushNamed(context, AppRoutes.menuOptions[index].route) ,
          );
        }, 
      )
    );
  }
}