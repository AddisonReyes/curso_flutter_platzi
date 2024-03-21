import 'package:flutter/material.dart';
import 'card_image.dart';

// ignore: must_be_immutable
class CardImageList extends StatelessWidget {
  var heightData = 350.0;
  var widthData = 250.0;

  CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/beach (2).jpg", heightData, widthData),
          CardImage("assets/img/beach (3).jpg", heightData, widthData),
          CardImage("assets/img/beach.jpg", heightData, widthData),
          CardImage("assets/img/forest.jpg", heightData, widthData),
          CardImage("assets/img/mountain.jpg", heightData, widthData),
          CardImage("assets/img/river.jpg", heightData, widthData)
        ],
      ),
    );
  }
}