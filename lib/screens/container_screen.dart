import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerScreen extends StatefulWidget {
   
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {


  double height = 100;
  double width = 100;
  Color? color = Colors.amber;

  void changeShape(){
    final random = Random();
    
    height = random.nextInt(300).toDouble() + 70;
    width = random.nextInt(300).toDouble() + 70;
    color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20)
          ),
          height: height,
          width: width,
         ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Cambiar forma'),
        icon: const FaIcon(FontAwesomeIcons.play, size: 20,),
        onPressed: (){
          changeShape();
        },
      ),
    );
  }
}