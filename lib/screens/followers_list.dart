import 'package:flutter/material.dart';

class FollowersList extends StatelessWidget {
  final List<String> images = [
    "woman1.jpg","ethan.jpg", "logan.jpg", "handsun.jpg", "man1.jpg", "man2.jpg"
  ];
  final List<String> username = ["awan_tika_", "yoursEthan","josh_90", "prerana_es2", "_bob_marley", "jonathon_"];
  final List<String> name = ["Awantika KC", "Ethan Doe", "Josh Maguire", "Prerena Oli", "Bob Marley", "Jonathon Larrason"];
   FollowersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
        itemBuilder: (BuildContext context, int index){
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/"+images[index]),
        ),
        title: Text(username[index], style: TextStyle(color: Colors.white),),
        subtitle: Text(name[index], style: TextStyle(color: Colors.white),),
        trailing: ElevatedButton(
          onPressed: (){

          },
          child: Text('Remove'),
        ),
      );
    });
  }
}
