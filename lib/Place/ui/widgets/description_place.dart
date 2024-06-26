import 'package:flutter/material.dart';
import '../../../Widgets/button_purple.dart';
import 'review_list.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace, {super.key});

  final starBorder = Container(
    margin: const EdgeInsets.only(
      top: 320.0,
      right: 3.0
    ),
    child: const Icon(
      Icons.star_border,
      color: Color(0xFFf2C611),
    ),
  );

  final starHalf = Container(
    margin: const EdgeInsets.only(
      top: 320.0,
      right: 3.0
    ),
    child: const Icon(
      Icons.star_half,
      color: Color(0xFFf2C611),
    ),
  );

  final star = Container(
    margin: const EdgeInsets.only(
      top: 320.0,
      right: 3.0
    ),
    child: const Icon(
      Icons.star,
      color: Color(0xFFf2C611),
    ),
  );

  
  @override
  Widget build( BuildContext context ) {
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 340.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            titleStars,
            description,
            ButtonPurple("Navigate"),
            const ReviewList()
          ],
        ),
      ],
    );
  }
}