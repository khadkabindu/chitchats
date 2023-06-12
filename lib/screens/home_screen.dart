import 'package:flutter/material.dart';

import '../widgets/profile_gradient_avatar.dart';

class HomeScreen extends StatelessWidget {
  List<String> images = [
    "varsha.jpeg",
    "woman1.jpg",
    "city.jpg",
    "logan.jpg",
    "man2.jpg"
  ];
  List<String> username = [
    "varshathapa_",
    "perett.ari",
    "ankit__many",
    "_yours_kit",
    "zennn"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "images/chitchatlogo.png",
                  height: 100,
                ),
                // Container(
                //   width: 270,
                //   height: 50,
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //       hintText: "Search",
                //       prefixIcon: Icon(
                //         Icons.search,
                //         color: Colors.black,
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(15),
                //           borderSide: BorderSide(color: Colors.black)),
                //       enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(15),
                //           borderSide: BorderSide(color: Colors.black)),
                //     ),
                //   ),
                // ),
                SizedBox(
                  width: 210,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_outlined),
                  iconSize: 30,
                ),

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline),
                  iconSize: 30,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  GradientCircleAvatar(
                                    imageUrl: "images/${images[index]}",
                                    size: 90.0,
                                    gradientColors: [
                                      Colors.pink,
                                      Colors.deepPurple,
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(username[index])
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/varsha.jpeg"),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Text("${username[0]}.21h"),
                              Text("kathmandu, Nepal")
                            ],
                          ),
                          SizedBox(width: 180,),

                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      Container(
                        height: 400,
                        child: Image.asset(
                          "images/city.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
