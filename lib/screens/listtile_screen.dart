import 'package:flutter/material.dart';

class ListtileScreen extends StatelessWidget {

  final musica = const ['Reggaeton', 'Rock', 'Alternativa', 'Pop', 'Electronica'];
   
  const ListtileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de ListTile'),
      ),
      body: ListView(
        children: [
          ...musica.map(
            (generos) => ListTile(
              title: Text(generos),
              subtitle: Text('Es un genero musical'),
              leading: CircleAvatar(child: Icon(Icons.music_note_rounded)),
              trailing: Icon(Icons.keyboard_arrow_right),
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