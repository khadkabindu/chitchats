import 'package:flutter/material.dart';

class GradientCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;
  final List<Color> gradientColors;
  final double innerSpacing;


  GradientCircleAvatar({
    required this.imageUrl,
    required this.size,
    required this.gradientColors,
    this.innerSpacing = 8.0,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(size * 0.03),
        child: CircleAvatar(

          backgroundImage: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
