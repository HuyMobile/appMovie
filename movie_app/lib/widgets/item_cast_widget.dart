import 'package:flutter/material.dart';

import '../models/item_cast.dart';

class ItemCastWidget extends StatelessWidget {
  const ItemCastWidget({
    Key? key,
    required this.itemCast,
  }) : super(key: key);

  final ItemCast itemCast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              child: Image.asset(itemCast.urlPhoto, fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: SizedBox(
                child: Text(
                  itemCast.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              child: SizedBox(
                child: Text(itemCast.character),
              )),
        ],
      ),
    );
  }
}