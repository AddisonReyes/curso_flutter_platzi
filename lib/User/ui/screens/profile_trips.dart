import 'package:flutter/material.dart';
import '../widgets/card_image_list_profile.dart';
import '../widgets/profile_options.dart';
import '../../../Widgets/gradient_back.dart';
import '../widgets/user_card.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("", 430.0),
        CardImageList(),
        GradientBack("Profile", 285.0),
        UserCard(
          "assets/img/user5.jpg",
          "pathumtzoo1@gmail.com",
          "Pathum Tzoo"
        ),
        const ProfileOptions(),
        
      ],
    );
  }
}