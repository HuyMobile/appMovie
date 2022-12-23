import 'package:flutter/material.dart';

import '../models/item_popular.dart';
import '../widgets/item_popular_widget.dart';
import 'detail_screen.dart';


class PopularScreen extends StatefulWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  
  final List<ItemPopular> listItemPopular=[
    ItemPopular(name: "RAYA và rồng thần cuối cùng", urlPhoto: "assets/images/image1.jpg", releaseDate: "05-T3-2021"),
    ItemPopular(name: "Tom và Jerry: Quậy tung New York", urlPhoto: "assets/images/image2.jpg", releaseDate: "26-T2-2021"),
    ItemPopular(name: "Chaos Walking", urlPhoto: "assets/images/image3.jpg", releaseDate: "05-T4-2021"),
    ItemPopular(name: "Fear of Rain", urlPhoto: "assets/images/image4.jpg", releaseDate: "05-T5-2021"),
    ItemPopular(name: "Judas and the Black Messiah", urlPhoto: "assets/images/image5.jpg", releaseDate: "12-T3-2021"),
    ItemPopular(name: "Nomadland", urlPhoto: "assets/images/image6.jpg", releaseDate: "14-T8-2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        childAspectRatio: 0.62,
        crossAxisSpacing: 16,
        mainAxisSpacing: 30),
        itemCount: 6,
        itemBuilder: (context,index){
          return ItemPopularWidget(context: context, itemPopular: listItemPopular[index]);
        });
  }

}


