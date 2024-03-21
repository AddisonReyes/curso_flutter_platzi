import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(
          "assets/img/people.jpg", 
          "Varuna Yasas", 
          "1 review and 5 photos", 
          "There is an amazing place"
        ),
        Review(
          "assets/img/people1.png", 
          "Tanyl Scytil", 
          "5 review and 3 photos", 
          "I realy like this place"
        ),
        Review(
          "assets/img/people2.jpg", 
          "Gonsa Iliku", 
          "4 review and 2 photos", 
          "Best place in the wrld!1"
        ),
      ],
    );
  }
}