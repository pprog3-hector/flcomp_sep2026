import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {

  final String url;
  final String title;

  const CustomCardImage({
    super.key, 
    required this.url, 
    required this.title,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  const Text('Deserunt irure officia veniam laboris dolor consectetur non nisi exercitation veniam eiusmod ipsum laborum.', maxLines: 2, overflow: TextOverflow.ellipsis,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}