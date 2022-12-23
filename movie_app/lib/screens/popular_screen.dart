import 'package:flutter/material.dart';

import '../models/item_popular.dart';
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
          return _itemPopular(listItemPopular[index]);
        });
  }

  Widget _itemPopular(ItemPopular itemPopular){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(itemPopular: itemPopular,)));
      },
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Stack(
           children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(18),
               child: SizedBox(
                 height: 230,
                 width: 175,
                 child: Image.asset(itemPopular.urlPhoto,fit: BoxFit.cover),
               ),
             ),
             Positioned(
                 bottom:10,
                 left: 90,
                 child: Text(itemPopular.releaseDate,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
           ],
         ),
         const SizedBox(height: 10,),
         Text(itemPopular.name,style: const TextStyle(fontWeight:FontWeight.w700),),

       ],
     ),
    );
  }
}
