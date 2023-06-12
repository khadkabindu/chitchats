import 'package:flutter/cupertino.dart';

class Post{
  final String profile_image;
  final String username;
  final String post_hours;
  final String location;
  final String post_image;

  const Post( { required this.profile_image, required  this.username,  required this.post_hours,  required this.location,  required this.post_image});

  static const List<Post> posts =[
    Post(profile_image:"man2.jpg", username:"bec_keey", post_hours:"14", location:"Sanepa,Lalitpur", post_image:"gokyo.jpg"),
    Post(profile_image:"ethan.jpg", username:"samy_0e", post_hours:"8", location:"NewYork", post_image:"dream.jpg"),


  ];

}