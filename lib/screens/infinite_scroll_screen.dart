import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
   
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  final List<int> imageIDs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool loading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener((){
      print(scrollController.position.pixels);
      if((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        print('Mostrando mas imagenes');
        fetchData();
      }
    });
  }

  Future fetchData() async{

    if (loading) return;

    loading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add10();
    loading = false;
    setState(() {});

  }

  void add10(){
    final lastId = imageIDs.last;
    imageIDs.addAll(
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => lastId + e),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        itemCount: imageIDs.length,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            //pueden incluso hacer uso de skeletons
            placeholder: const AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/500/300?image=${imageIDs[index]}'),
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}