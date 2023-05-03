// ignore_for_file: prefer_const_constructors
//ListView for images
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  final double subwidth;
  const ListViewHorizontal({super.key, required this.subwidth});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
        items: [
          listViewScroll(screenwidth),
          listViewScroll(screenwidth),
          listViewScroll(screenwidth),
          listViewScroll(screenwidth)
        ],
        options: CarouselOptions(
            autoPlay: true, aspectRatio: subwidth, disableCenter: false));
  }

  Widget listViewScroll(double sw) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 8, 0),
      child: Container(
        // height: 100,
        width: sw,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          image: DecorationImage(
              image: AssetImage("images/image1.jpg"), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
