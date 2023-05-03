// ignore_for_file: prefer_const_constructors

import 'package:esewa_clone/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.orange[800]),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle:
                MaterialStateProperty.all(TextStyle(color: Colors.black)),
            backgroundColor: MaterialStateProperty.all(Colors.orange[200]),
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
