import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatefulWidget {

  final String labelText;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  // final TextEditingController textController;
  final TextInputType textInputType;

  const CustomInput({
    super.key, 
    required this.labelText, 
    required this.hintText, 
    required this.icon, 
    required this.obscureText, 
    // required this.textController, 
    required this.textInputType,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        //Decoraciones del input
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          ),
        //Otras opciones
        // suffixText: 'Suffix',
        labelText: widget.labelText,
        prefixIcon: Icon(widget.icon),
        hintText: widget.hintText,
        ),
        keyboardType: widget.textInputType,
        obscureText: widget.obscureText,
      ),
    );
  }
}