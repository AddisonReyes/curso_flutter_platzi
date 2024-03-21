import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserCard extends StatelessWidget {
  
  String pathImage;
  String gmail;
  String name;
  
  UserCard(this.pathImage, this.gmail, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        top: 125.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 20.0,
          color: Colors.white
        ),
      ),
    );

    final userGmail = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        gmail,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        bottom: 480.0,
        left: 20.0
      ),

      width: 85.0,
      height: 85.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        border: Border.all(
          color: Colors.white,
          width: 1.6,
        )
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userGmail,
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}