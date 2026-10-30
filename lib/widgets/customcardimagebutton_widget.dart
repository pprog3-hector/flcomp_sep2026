import 'package:flutter/material.dart';

class CustomCardImageButton extends StatelessWidget {

  final String title;
  final String url;
  final String tag;

  const CustomCardImageButton({
    super.key, 
    required this.title, 
    required this.url, 
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage(url),
              height: 280,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tag, maxLines: 2, overflow: TextOverflow.ellipsis,  style: const TextStyle(color: Colors.red, fontSize: 12),),
                      Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  
                    ],
                  ),
                  FilledButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black)
                    ),
                    onPressed: (){}, 
                    child: const Text('Visitar')
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}