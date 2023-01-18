// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewIcons extends StatelessWidget {
  const ListViewIcons({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 12.0),
      child: Container(
        height: 200,
        width: screenwidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 0, 12.0),
              child: Text(
                "Popular Services",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            //ListView Horizontal Icons
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  iconsScroll("Agriculture and Forest "),
                  iconsScroll("CEDEP Nepal, Putalisadak "),
                  iconsScroll("National College of Engineering"),
                  iconsScroll("Paschimanchal Campus"),
                  iconsScroll("Pulchowk Campus")
                ],
              ),
            ),
            //View More Button
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    log('tapped');
                  },
                  child: Container(
                    height: 50,
                    width: screenwidth - 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.orange[200],
                    ),
                    //Buttons
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('View More'),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconsScroll(String text) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 0, 2.0),
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12)),
            ),
            SizedBox(
              // height: 60,
              width: 70,
              child: Text(
                text,
                maxLines: 2,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
