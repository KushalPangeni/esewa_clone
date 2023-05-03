// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:esewa_clone/appbar_profile_icons.dart';
import 'package:esewa_clone/listview_horz.dart';
import 'package:esewa_clone/popular_services.dart';
import 'package:esewa_clone/money_card.dart';
import 'package:esewa_clone/second_card.dart';
import 'package:esewa_clone/travel_package.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.orange[400],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
            ),
            Column(
              children: [
                AppBarProfile(),
                MoneyCard(),
                IconCard(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: SizedBox(
                    height: 150,
                    child: ListViewHorizontal(
                      subwidth: 2.9,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: SizedBox(
                    height: 150,
                    // width: 250,
                    child: ListViewHorizontal(
                      subwidth: 2.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 270,
                  child: ListViewIcons(),
                ),
                SizedBox(
                  height: 270,
                  child: TravelPackage(),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
