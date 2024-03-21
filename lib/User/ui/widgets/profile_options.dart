import 'package:flutter/material.dart';
import 'icon_button.dart';

class ProfileOptions extends StatefulWidget {
  const ProfileOptions({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfileOptions();
  }
}

class _ProfileOptions extends State<ProfileOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 210,
        left: 20,
        right: 30
      ),
      child: Row(
        children: <Widget>[
          CreateIconButton(
            true, 
            Icons.bookmark_border, 
            true,
          ),
          CreateIconButton(
            true, 
            Icons.card_giftcard_outlined, 
            false,
          ),
          CreateIconButton(
            false, 
            Icons.add, 
            true,
          ),
          CreateIconButton(
            true, 
            Icons.mail, 
            false,
          ),
          CreateIconButton(
            true, 
            Icons.person, 
            false,
          )
        ],
      ),
    );
  }
}