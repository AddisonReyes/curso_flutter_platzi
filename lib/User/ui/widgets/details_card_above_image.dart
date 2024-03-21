import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsCardAboveImage extends StatelessWidget {
  String description;
  String details;
  String name;

  DetailsCardAboveImage(this.name, this.description, this.details, {super.key});

  @override
  Widget build(BuildContext context) {
    final namePlace = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final placeDescription = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        description,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userDetails = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          color: Colors.amber
        ),
      ),
    );

    return Container(
      height: 110,
      width: 280,
      padding: const EdgeInsets.only(
        top: 10,
        right: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          namePlace,
          placeDescription,
          userDetails
        ],
      )
    );
  }
}