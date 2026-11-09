import 'package:flcomp_sep2026/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
   
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
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
                  labelText: 'Correo Electronico', 
                  hintText: 'Escribe tu email', 
                  icon: Icons.email_rounded, 
                  obscureText: false, 
                  textInputType: TextInputType.emailAddress
                ),
                CustomInput(
                  labelText: 'Contrasena', 
                  hintText: 'Escribe tu contrasena', 
                  icon: Icons.password_rounded, 
                  obscureText: true, 
                  textInputType: TextInputType.visiblePassword
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12)
                    )
                  ),
                  onPressed: (){}, 
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

