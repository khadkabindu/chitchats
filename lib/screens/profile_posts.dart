import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  final List<String> _photosShared = [
    "handsun.jpg",
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
    "roadway.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: _photosShared.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
          },
          child: Image.asset(
            "images/"+_photosShared[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );


  }
}
