// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:esewa_clone/icon_button.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 230,
        width: screenwidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8.0),
          child: Column(
            children: [
              //1st row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIconButton(
                    text: 'TopUp',
                    icon: Icon(Icons.mobile_friendly),
                  ),
                  CustomIconButton(
                    text: 'Electricity',
                    icon: Icon(Icons.light),
                  ),
                  CustomIconButton(
                    text: 'Khanepani',
                    icon: Icon(Icons.water_damage_outlined),
                  ),
                  CustomIconButton(
                    text: 'eSewa Care',
                    icon: Icon(Icons.heart_broken_outlined),
                  ),
                ],
              ),
              //2nd row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIconButton(
                    text: 'Internet',
                    icon: Icon(Icons.wifi),
                  ),
                  CustomIconButton(
                    text: 'Airlines',
                    icon: Icon(Icons.airplanemode_on),
                  ),
                  CustomIconButton(
                    text: '''International
      Airlines''',
                    icon: Icon(Icons.water_damage_outlined),
                  ),
                  CustomIconButton(
                    text: 'Hotels',
                    icon: Icon(Icons.location_city),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
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
                            Text('View More'),
                            Icon(Icons.arrow_drop_down)
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
        ),
      ),
    );
  }
}
