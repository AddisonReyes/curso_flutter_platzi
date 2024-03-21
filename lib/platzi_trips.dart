import 'package:flutter/material.dart';
import 'User/ui/screens/profile_trips.dart';
import 'search_trips.dart';
import 'Place/ui/screens/home_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetChildren = [
    HomeTrips(),
    const SearchTrips(),
    const ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple, 
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ""
            )
          ],
        ),
      ),
      body: widgetChildren[indexTap],
    );
  }
  
}