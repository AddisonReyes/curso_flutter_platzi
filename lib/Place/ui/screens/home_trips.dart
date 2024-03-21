import 'package:flutter/material.dart';
import '../widgets/description_place.dart';
import 'header_appbar.dart';

// ignore: must_be_immutable
class HomeTrips extends StatelessWidget {
  HomeTrips({super.key});

  String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh tellus molestie nunc non blandit massa. Duis at consectetur lorem donec. Gravida dictum fusce ut placerat orci. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Ac ut consequat semper viverra nam libero. Nec sagittis aliquam malesuada bibendum arcu vitae elementum. Aliquam sem et tortor consequat id porta nibh venenatis cras.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DescriptionPlace("Duwili Ella", 5, descriptionDummy),
        const HeaderAppBar(),
      ],
    );
  } 
}