import 'package:flutter/material.dart';

import '../models/item_popular.dart';

class HeaderDetailWidget extends StatelessWidget {
  const HeaderDetailWidget({
    Key? key,
    required this.itemPopular,
  }) : super(key: key);

  final ItemPopular itemPopular;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox(
                child: Image.asset(itemPopular.urlPhoto, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    itemPopular.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "Xuất bản: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Expanded(flex: 2, child: Text(itemPopular.releaseDate)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "Thể loại: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                              "Phim Hoạt Hình, Phim Phiêu lưu, Phim Giả Tưởng, Phim Gia Đình, Phim Hành Động")),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}