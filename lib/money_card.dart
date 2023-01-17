// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:esewa_clone/icon_button.dart';
import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  const MoneyCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
//Money and reward points and all the icons in first container
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12.0, 0),
      child: Container(
        height: 120,
        width: screenwidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            //Money description
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.teal[50],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(18),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //wallet NPR 264.84
                  Row(
                    children: [
                      //Icon wallet
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.wallet),
                      ),
                      //NPR 268.84 \n Balance
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //NPR 268.84
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(text: 'NPR '),
                                TextSpan(
                                    text: '268.84',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                          //Balance
                          Text(
                            "Balance",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Eye
                  Icon(Icons.remove_red_eye_sharp),
                  //30.09 Reward Points
                  Row(
                    children: [
                      //30.09 \n Reward
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //NPR 30.09
                          Text(
                            '30.09',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          //Reward Points
                          Text(
                            "Reward Points",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      //Reward icon
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.badge),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Icon Button widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomIconButton(
                  icon: Icon(Icons.wallet),
                  text: "Load Money",
                ),
                CustomIconButton(
                  icon: Icon(Icons.wallet),
                  text: "Send Money",
                ),
                CustomIconButton(
                  icon: Icon(Icons.food_bank_outlined),
                  text: "Bank Transfer",
                ),
                CustomIconButton(
                  icon: Icon(Icons.money),
                  text: "Remittance",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
