import 'package:flcomp_sep2026/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        //Se colocan guines bajos cuando no se necesita del context y/o index
        separatorBuilder: (_, __) => const Divider(), 
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(AppRoutes.menuOptions[index].name),
            leading: Icon(AppRoutes.menuOptions[index].icon),
            onTap: () => Navigator.pushNamed(context, AppRoutes.menuOptions[index].route) ,
          );
        }, 
      )
    );
  }
}

//SingleChildScrollView