// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final Icon icon;
  const CustomIconButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83,
      height: 78,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4, 0, 4, 2.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: (() {}),
              icon: icon,
              iconSize: 22,
            ),
            Text(
              text,
              maxLines: 2,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
