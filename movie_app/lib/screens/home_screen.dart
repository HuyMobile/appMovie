
import 'package:flutter/material.dart';
import 'package:movie_app/screens/popular_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TabBar(
                labelStyle: TextStyle(
                  fontFamily: "Comfortaa",fontSize: 20,fontWeight: FontWeight.bold
                ),
                isScrollable: true,
                tabs: [
                  Tab(text: 'Popular'),
                  Tab(text: 'NowPlaying'),
                  Tab(text: 'Up Coming'),
                  Tab(text: 'Top Rate'),
                ],
                indicatorColor: Colors.black,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            PopularScreen(),
            Text('Nội dung của Tab 2'),
            Text('Nội dung của Tab 3'),
            Text('Nội dung của Tab 4'),
          ],
        ),
      ),
    );
  }
}




