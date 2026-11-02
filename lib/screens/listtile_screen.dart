import 'package:flutter/material.dart';

class ListtileScreen extends StatelessWidget {

  final musica = const ['Reggaeton', 'Rock', 'Alternativa', 'Pop', 'Electronica'];
   
  const ListtileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de ListTile'),
      ),
      body: ListView(
        children: [
          ...musica.map(
            (generos) => ListTile(
              title: Text(generos),
              subtitle: const Text('Es un genero musical'),
              leading: const CircleAvatar(child: Icon(Icons.music_note_rounded)),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: (){
                print(generos);
              },
            )
          )
        ],
      )
    );
  }
}