import 'package:flutter/material.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black, Theme
                          .of(context)
                          .primaryColor
                    ])
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/profile.JPG"),
                      radius: 55,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/pro.jpg"),
                      radius: 30,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward),
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/");
                },
              ),
              Divider(color: Theme
                  .of(context)
                  .primaryColor,),
              ListTile(
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward),
                title: Text("Counter"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/counter");
                },
              ),
              Divider(color: Theme
                  .of(context)
                  .primaryColor,),
              ListTile(
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward),
                title: Text("Chat"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/chat");
                },
              ),
            ]
        )
    );
  }
}



