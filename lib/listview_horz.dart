// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  final double subwidth;
  const ListViewHorizontal({super.key, required this.subwidth});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return ListView(
      scrollDirection: Axis.horizontal,
      addAutomaticKeepAlives: true,
      children: [
        listViewScroll(screenwidth),
        listViewScroll(screenwidth),
        listViewScroll(screenwidth),
        listViewScroll(screenwidth)
      ],
    );
  }

  Widget listViewScroll(double sw) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 8, 0),
      child: Container(
        // height: 100,
        width: sw - subwidth,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
