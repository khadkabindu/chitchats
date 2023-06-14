import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  List<String> _photosShared = [
    "roadway.jpg",
    "childhood.jpg",
    "city.jpg",
    "sunset.jpg",
    "dream.jpg",
    "girlygirls.jpg",
    "gokyo.jpg",
    "foods.jpg",
    "sunrise.jpg",
    "paints.jpg",
    "varsha.jpeg",
    "handsun.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjust the number of columns as needed
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
        ),
        itemCount: _photosShared.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle photo tap event
              // You can navigate to a detailed view or perform any other action
            },
            child: Image.asset(
              "images/"+_photosShared[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );


  }
}
