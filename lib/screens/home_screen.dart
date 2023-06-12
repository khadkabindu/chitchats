import 'package:flutter/material.dart';

import '../widgets/profile_gradient_avatar.dart';

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


  static const List<IconData> _selectedIcons = [
    Icons.home_filled,
    Icons.explore,
    Icons.add_box_sharp,
    Icons.messenger_outlined,
    Icons.person
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
    Center(
      child: Text(
        "Add",
        style: TextStyle(color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        "Messages",
        style: TextStyle(color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(color: Colors.black),
      ),
    ),
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
        items:  List.generate(
          _selectedIcons.length,
              (index) => BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
            icon: Icon(
              index == _selectedIndex ? _selectedIcons[index] : _unselectedIcons[index],
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
                width: 210,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined,color: Colors.white,),
                iconSize: 30,
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline, color: Colors.white,),
                iconSize: 30,
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
                        Text(username[index], style: TextStyle(color: Colors.white),)
                      ],
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 495,
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/varsha.jpeg"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${username[0]}.21h", style: TextStyle(color: Colors.white),),
                                Text("kathmandu, Nepal", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz, color: Colors.white,),
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
                  );

                }),
          ),


        ],
      ),
    );
  }
}









