// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:esewa_clone/const.dart';
import 'package:flutter/material.dart';

class IconCard extends StatefulWidget {
  const IconCard({super.key});

  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  bool viewMore = true;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: viewMore == false ? 600 : 350,
        width: screenwidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: viewMore == false ? icons.length : 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 5,
                      childAspectRatio: 1),
                  itemBuilder: ((context, index) => icons[index]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        if (viewMore) {
                          viewMore = false;
                        } else {
                          viewMore = true;
                        }
                        log(viewMore.toString());
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: screenwidth - 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.orange[200],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (viewMore == false)
                              (Text('View Less'))
                            else
                              (Text('View More')),
                            if (viewMore == false)
                              (Icon(Icons.arrow_drop_up))
                            else
                              (Icon(Icons.arrow_drop_down)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.orange[200]),
                        child: Icon(Icons.edit),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          // ],
        ),
      ),
      // ),
    );
  }

  void change() {
    setState(() {});
  }
}
