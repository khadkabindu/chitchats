import 'package:flutter/material.dart';
import 'package:social_media/models/post_model.dart';
import 'package:social_media/screens/profile.dart';

import '../widgets/profile_gradient_avatar.dart';
import 'upload_post.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  profileImage() {
    return const CircleAvatar(
      radius: 40,
      backgroundImage: AssetImage("images/varsha.jpeg"),
    );
  }

  static const List<dynamic> _selectedIcons = [
    Icons.home_filled,
    Icons.explore,
    Icons.add_box_sharp,
    Icons.messenger_outlined,
    Icons.person_outline
  ];

  static const List<IconData> _unselectedIcons = [
    Icons.home,
    Icons.explore_outlined,
    Icons.add_box_outlined,
    Icons.messenger_outline_outlined,
    Icons.person_outline
  ];

  List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    Center(
      child: Text(
        "Explore",
        style: TextStyle(color: Colors.white),
      ),
    ),
    UploadPosts(),
    Center(
      child: Text(
        "Messages",
        style: TextStyle(color: Colors.white),
      ),
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: List.generate(
          _selectedIcons.length,
          (index) => BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(
              index == _selectedIndex
                  ? _selectedIcons[index]
                  : _unselectedIcons[index],
            ),
            label: "",
          ),
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Image.asset(
                "images/chitchatslogo_darktheme.png",
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Container(
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
                        Text(
                          username[index],
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  }),
            ),
          ),
          Container(
            height: 495,
            padding: EdgeInsets.all(16),
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "images/${Post.posts[index].profile_image}"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    Post.posts[index].username,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    ".${Post.posts[index].post_hours}h",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Text(
                                Post.posts[index].location,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 350,
                      child: Image.asset(
                        "images/${Post.posts[index].post_image}",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline),
                              color: Colors.white,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.comment),
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "100 likes",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Text(username[index],style: TextStyle(color: Colors.white),),
                            Text(" The world is a mess and I love being messy! ",style: TextStyle(color: Colors.white) )
                          ],
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
