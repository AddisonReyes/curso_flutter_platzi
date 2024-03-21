import 'package:flutter/material.dart';


class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}


class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool favChecked = false;
  var favIcon = const Icon(
    Icons.favorite_border,
    color: Colors.white,
  );

  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Added to favorites"),
          )
        );
    
    if (!favChecked) {
      favIcon = const Icon(
        Icons.favorite,
        color: Colors.white,
      );

      setState(() {
        favChecked = true;        
      });
    }
    else {
      favIcon = const Icon(
        Icons.favorite_border,
        color: Colors.white,
      );

      setState(() {
        favChecked = false;        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:  const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      shape: const CircleBorder(),
      child: favIcon,
    );
  }
}