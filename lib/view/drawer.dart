import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        )),
                    // Text(
                    //   " About Devloper",
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    // )
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://www.filmibeat.com/img/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg"),
                      // child: ,
                    ),SizedBox(
                  height: 5,
                ),
                    Text(
                      "Ranjeet Shrestha",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                leading: Icon(CupertinoIcons.person),
                title: Text("About"),
                trailing: Icon(CupertinoIcons.forward),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                leading: Icon(CupertinoIcons.heart),
                title: Text("Favourite"),
                trailing: Icon(CupertinoIcons.forward),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                leading: Icon(CupertinoIcons.share),
                title: Text("Share"),
                trailing: Icon(CupertinoIcons.forward),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                leading: Icon(CupertinoIcons.radiowaves_left),
                title: Text("Podcast"),
                trailing: Icon(CupertinoIcons.forward),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                leading: Icon(CupertinoIcons.keyboard_chevron_compact_down),
                title: Text("FeedBack"),
                trailing: Icon(CupertinoIcons.forward),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
