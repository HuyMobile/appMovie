import 'package:flutter/material.dart';
import 'package:movie_app/models/item_cast.dart';

import '../models/item_popular.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.itemPopular}) : super(key: key);
  final ItemPopular itemPopular;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background1.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white.withOpacity(0.8),
          ),
          _body(context),
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
        const SizedBox(
          height: 20,
        ),
        _header(),
        const SizedBox(
          height: 20,
        ),
        _carst(),
        const SizedBox(
          height: 20,
        ),
        _overview(),
      ],
    );
  }

  _header() {
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

  _carst() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cast"),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: listItemCast.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _itemCast(listItemCast[index]);
              },
            ),
          )
        ],
      ),
    );
  }

  _itemCast(ItemCast itemCast) {
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

  _overview(){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Overview",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        SizedBox(height: 15,),
        Text("Raya và Rồng Thần Cuối Cùng kể về một vương quốc huyền bí có tên là Kumandra – "
            "vùng đất mà loài rồng và con người sống hòa thuận với nhau."
            " Nhưng rồi một thế lực đen tối bỗng đe dọa bình yên nơi đây,"
            " loài rồng buộc phải hi sinh để cứu lấy loài người. "
            "500 năm sau, thế lực ấy bỗng trỗi dậy và một lần nữa, "
            "Raya là chiến binh duy nhất mang trong mình trọng trách đi tìm Rồng Thần "
            "cuối cùng trong truyền thuyết nhằm hàn gắn lại khối ngọc đã vỡ để cứu lấy vương quốc. "
            "Thông qua cuộc hành trình, Raya nhận ra loài người cần nhiều hơn những gì họ nghĩ,"
            " đó chính là lòng tin và sự đoàn kết.",style: TextStyle(fontSize: 16),)
        
      ],
    ),);
    
  }
}
