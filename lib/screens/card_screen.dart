import 'package:flcomp_sep2026/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCard1(
            title: 'Objeto de la clase CustomCard',
            color: Colors.blue[200]!,
          ),
          CustomCard1(
            title: 'Objeto de la clase CustomCard',
            color: Colors.green[200]!,
          ),
          CustomCard1(
            title: 'Objeto de la clase CustomCard',
            color: Colors.red[200]!,
          ),
          const CustomCardImage(
            url: 'https://media-gadventures.global.ssl.fastly.net/media-server/dynamic/blogs/posts/daniels/2015/04/9-iceland_northern_lights_landscape_arctic_adventures_elli_thor_magnusson.jpg',
            title: 'Auroras boreales',
          ),
          const CustomCardImageButton(
            url: 'https://img.magnific.com/fotos-premium/horizonte-bogota-bogota-capital-distrito-colombia_1153727-1848.jpg',
            title: 'Bogotá',
            tag: 'DESTINOS',
          ),
        ],
      ),
    );
  }
}

