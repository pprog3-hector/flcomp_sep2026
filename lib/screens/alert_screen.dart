import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Soy una alerta'),
          content: const Text('Quieres borrar este mensaje?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Aceptar')
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar')
            ),
          ],
        );
      }
    );
  }
   
  const AlertScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas'),
      ),
      body: Center(
         child: FilledButton(
          onPressed: (){
            displayDialog(context);
          }, 
          child: const Text('Ver alerta')
        )
      ),
    );
  }
}