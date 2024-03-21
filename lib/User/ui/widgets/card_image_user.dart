import '../../../Widgets/floating_action_button_green.dart';
import 'details_card_above_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardImageUser extends StatelessWidget {
  String pathImage = "assets/img/beach (3).jpg";

  var heightData = 350.0;
  var widthData = 250.0;

  String cardDescription;
  String cardDetails;
  String cardName;

  CardImageUser(this.pathImage, this.heightData, this.widthData, this.cardName, this.cardDescription, this.cardDetails, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: heightData,
      width: widthData,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.1, 7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: const Alignment(0.6, 1.5),
      children: <Widget>[
        card,
        Container(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          alignment: Alignment.bottomCenter,
          child: Stack(
            children: <Widget>[
              DetailsCardAboveImage(
                cardName, 
                cardDescription, 
                cardDetails),
            ],
          ),
        ),
        const FloatingActionButtonGreen()
      ],
    );
  }
}