import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {

  final String title;
  final Color color;

  const CustomCard1({
    super.key, 
    required this.title, 
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        color: color,
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: const Text('Cupidatat incididunt amet sit qui aliquip cillum amet labore sit nostrud nulla cupidatat.'),
              leading: const Icon(Icons.star_border_rounded),
            )
          ],
        ),
      ),
    );
  }
}