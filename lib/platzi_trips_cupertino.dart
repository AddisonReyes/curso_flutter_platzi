import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'User/ui/screens/profile_trips.dart';
import 'search_trips.dart';
import 'Place/ui/screens/home_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        backgroundColor: Colors.white,
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.transparent,
          activeColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo),
              label: ""
            ),
          ]
        ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => const SearchTrips(),
            );
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => const ProfileTrips(),
            );
          default:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
          }
        },
      )
	  );
  }
}