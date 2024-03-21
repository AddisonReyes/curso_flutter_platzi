import '../../../Widgets/floating_action_button_green.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget {
  String pathImage = "assets/img/beach (3).jpg";

  var heightData = 350.0;
  var widthData = 250.0;

  CardImage(this.pathImage, this.heightData, this.widthData, {super.key});

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
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        const FloatingActionButtonGreen()
      ],
    );
  }
}