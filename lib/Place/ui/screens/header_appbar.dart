import 'package:flutter/material.dart';
import '../widgets/card_image_list.dart';
import '../../../Widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Popular", 260.0),
        CardImageList()
      ],
    );
  }
}