import 'package:flutter/material.dart';
import 'package:movie_app/models/item_cast.dart';

import '../models/item_popular.dart';
import '../widgets/cast_widget.dart';
import '../widgets/header_detail_widget.dart';
import '../widgets/item_cast_widget.dart';
import '../widgets/overview_widget.dart';

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
      physics: const ClampingScrollPhysics(),
      children: [
        const SizedBox(
          height: 20,
        ),
        HeaderDetailWidget(itemPopular: itemPopular),
        const SizedBox(
          height: 20,
        ),
        const CastWidget(),
        const SizedBox(
          height: 20,
        ),
        const OverviewWidget(),
      ],
    );
  }
}








