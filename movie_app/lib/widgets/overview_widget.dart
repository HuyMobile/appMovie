import 'package:flutter/material.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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