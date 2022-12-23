import 'package:flutter/material.dart';

import '../models/item_cast.dart';
import 'item_cast_widget.dart';


class CastWidget extends StatelessWidget {
  const CastWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Cast"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: listItemCast.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemCastWidget(itemCast: listItemCast[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}