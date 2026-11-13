import 'package:flcomp_sep2026/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
   
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  final _formKey = GlobalKey<FormState>();

  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final Map<String, String> _formValues = {

    'nombre' : '',
    'apellido' : '',
    'email' : '',
    'password' : ''

  };

  void _comprobarFormValues(){
    _formValues['nombre'] = _nombreController.text.trim();
    _formValues['apellido'] = _apellidoController.text.trim();
    _formValues['email'] = _emailController.text.trim();
    _formValues['password'] = _passwordController.text.trim();
  }

  bool get _formCompleto {
    return _nombreController.text.trim().isNotEmpty &&
     _apellidoController.text.trim().isNotEmpty &&
      _emailController.text.trim().isNotEmpty &&
       _passwordController.text.trim().isNotEmpty;
  }

  void _enviarForm(){
    setState(() {
      if(!(_formKey.currentState?.validate() ?? false)){
        return;
      }
      _comprobarFormValues();
      print(_formValues);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
          behavior: SnackBarBehavior.fixed,
          content: Row(
            children: [
              Icon(Icons.check_circle_outline_rounded, color: Colors.white),
              SizedBox(width: 5),
              Text('Informacion enviada con exito.'),
            ],
          )
        )
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Registro de usuarios', style: TextStyle(fontSize: 22),),
                Text('Debes completar todos los campos antes de continuar.'),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomInput(
                        textController: _nombreController,
                        icon: Icons.person,
                        labelText: 'Nombre',
                        hintText: 'Ingresa tu nombre',
                        obscureText: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: CustomInput(
                        textController: _apellidoController,
                        icon: Icons.person,
                        labelText: 'Apellido',
                        hintText: 'Ingresa tu apellido',
                        obscureText: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
                CustomInput(
                  textController: _emailController,
                  labelText: 'Correo Electronico', 
                  hintText: 'Escribe tu email', 
                  icon: Icons.email_rounded, 
                  obscureText: false, 
                  textInputType: TextInputType.emailAddress
                ),
                CustomInput(
                  textController: _passwordController,
                  labelText: 'Contraseña', 
                  hintText: 'Escribe tu contraseña', 
                  icon: Icons.password_rounded, 
                  obscureText: true, 
                  textInputType: TextInputType.visiblePassword
                ),
                const SizedBox(height: 10),
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12)
                    )
                  ),
                  onPressed: _enviarForm, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.send_rounded, size: 24,),
                      SizedBox(width: 10),
                      Text('Registrarme', style: TextStyle(fontSize: 16),)
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

