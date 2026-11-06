import 'package:flcomp_sep2026/themes/app_themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  bool check = true;
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders y Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            divisions: 4,
            label: 'Prueba',
            value: sliderValue, 
            onChanged: check == true ? (value){
              setState(() {
                sliderValue = value;
              });
            } : null
          ),
          Text('$sliderValue'),
          // Checkbox(
          //   value: check2, 
          //   onChanged: (value){}
          // ),
          // CheckboxListTile(
          //   title: Text('Términos y condiciones'),
          //   subtitle: Text('Al marcar esta casilla, estarás aceptando nuestros términos y condiciones.'),
          //   value: check2, 
          //   onChanged: (value){}
          // ),
          SwitchListTile(
            title: const Text('Términos y condiciones'),
            subtitle: const Text('Al marcar esta casilla, estarás aceptando nuestros términos y condiciones.'),
            value: check, 
            onChanged: (value){
              setState(() {
                check = value;
              });
            }
          ),
          Expanded(
            child: Center(
              child: Container(
                width: sliderValue * 4,
                height: sliderValue * 4,
                decoration: BoxDecoration(
                  color: AppThemes.primary,
                  shape: BoxShape.circle
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}