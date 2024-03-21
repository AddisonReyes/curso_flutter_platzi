import 'package:flutter/material.dart';
import 'card_image_user.dart';

// ignore: must_be_immutable
class CardImageList extends StatelessWidget {
  var heightData = 250.0;
  var widthData = 360.0;

  CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 300.0,
      child: ListView(
        padding: const EdgeInsets.only(
          right: 16,
          top: 240,
          bottom: 130
        ),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageUser(
            "assets/img/place1.jpg", heightData, widthData,
            "Knuckles Mountains Range",
            "Hiking Waterfall hunting. Natural both, Scenes & Photography",
            "Steps 123,123,123"),
          CardImageUser(
            "assets/img/place2.jpg", heightData, widthData,
            "Knuckles Mountains Range",
            "Hiking Waterfall hunting. Natural both, Scenes & Photography",
            "Steps 123,123,123"),
          CardImageUser(
            "assets/img/place3.jpg", heightData, widthData,
            "Knuckles Mountains Range",
            "Hiking Waterfall hunting. Natural both, Scenes & Photography",
            "Steps 123,123,123"),
          CardImageUser(
            "assets/img/place4.jpg", heightData, widthData,
            "Knuckles Mountains Range",
            "Hiking Waterfall hunting. Natural both, Scenes & Photography",
            "Steps 123,123,123"),
          CardImageUser(
            "assets/img/place5.jpg", heightData, widthData,
            "Knuckles Mountains Range",
            "Hiking Waterfall hunting. Natural both, Scenes & Photography",
            "Steps 123,123,123"),
          CardImageUser(
            "assets/img/place6.jpg", heightData, widthData,
            "Knuckles Mountains Range",
            "Hiking Waterfall hunting. Natural both, Scenes & Photography",
            "Steps 123,123,123"),
        ],
      ),
    );
  }
}