import 'package:flutter/material.dart';
import 'package:social_media/screens/profile_posts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin{
   late TabController _tabController;

   @override
   void initState() {
     super.initState();
     _tabController = TabController(length: 3, vsync: this);
   }

   @override
   void dispose() {
     _tabController.dispose();
     super.dispose();
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/varsha.jpeg"),
                    radius: 40,
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "varshathapa__",
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(width: 50,),
                      Container(
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Edit profile"),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,

                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(text: 'Posts'),
                    Tab(text: 'Followers'),
                    Tab(text: 'Following'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ProfilePosts(),
                    Center(child: Text('Followers')),
                    Center(child: Text('Following')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


