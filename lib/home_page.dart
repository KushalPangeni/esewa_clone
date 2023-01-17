// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:esewa_clone/appbar_profile_icons.dart';
import 'package:esewa_clone/listview_horz.dart';
import 'package:esewa_clone/listview_icons_hori.dart';
import 'package:esewa_clone/money_card.dart';
import 'package:esewa_clone/second_card.dart';
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
          child: Column(
            children: [
              AppBarProfile(),
              MoneyCard(),
              IconCard(),
              SizedBox(
                height: 150,
                child: ListViewHorizontal(
                  subwidth: 24,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              // IconCard(),
              SizedBox(
                height: 150,
                // width: 250,
                child: ListViewHorizontal(
                  subwidth: 70,
                ),
              ),
              SizedBox(height: 270, child: ListViewIcons())
            ],
          ),
        ),
      ),
    );
  }
}
