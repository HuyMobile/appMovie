import 'package:flutter/material.dart';

import '../models/item_popular.dart';
import '../screens/detail_screen.dart';

class ItemPopularWidget extends StatelessWidget {
  const ItemPopularWidget({
    Key? key,
    required this.context,
    required this.itemPopular,
  }) : super(key: key);

  final BuildContext context;
  final ItemPopular itemPopular;

  @override
  Widget build(BuildContext context) {
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