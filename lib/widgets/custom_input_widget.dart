import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatefulWidget {

  final String labelText;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController textController;
  final TextInputType textInputType;

  const CustomInput({
    super.key, 
    required this.labelText, 
    required this.hintText, 
    required this.icon, 
    required this.obscureText, 
    required this.textController, 
    required this.textInputType,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {

  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  String? _validar(String? value){
    final text = value?.trim() ?? '';

    if (text.isEmpty){
      return 'Entrada incompleta.';
    }

    if(widget.textInputType == TextInputType.emailAddress && !_validarCorreo(text)){
      return 'Formato de correo incorrecto.';
    }

    if (widget.obscureText && text.length < 8){
      return 'La contraseña debe tener al menos 8 caracteres.';
    }

    return null;

  }

  bool _validarCorreo(String text){
    return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: widget.textController,
        keyboardType: widget.textInputType,
        obscureText: _obscureText,
        //Decoraciones del input
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: _validar,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          //Otras opciones
          labelText: widget.labelText,
          prefixIcon: Icon(widget.icon),
          hintText: widget.hintText,
          //Boton de contraseña
          suffixIcon: widget.obscureText ? IconButton(
            onPressed: (){
              setState(() {
                _obscureText = !_obscureText;
              });
            }, 
            icon: Icon(_obscureText ? Icons.visibility_off_rounded : Icons.visibility_rounded)
          ) : null
        ),
      ),
    );
  }
}