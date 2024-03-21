// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreateIconButton extends StatelessWidget {
  bool active;
  var data;
  var mini;

  CreateIconButton(this.mini, this.data, this.active, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: mini ? 35 : 60,
        width: mini ? 35 : 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? Colors.white : Colors.white54
          ),
        child: Center(
          child: Icon(
            data,
            color: const Color(0xFF584CD1),
            size: mini ? 20 : 50,
          ),
        ),
      ),
    );
  }
}