import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter/material.dart';
import 'package:reallist/History/history.dart';
import 'package:reallist/Home/home.dart';

import 'package:reallist/My%20Team/myteam.dart';
import 'package:reallist/Override/override.dart';
import 'package:reallist/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List Screens = [
    Home(),
    Override(),
    History(),
    MyTeam(),
  ];
  int selectedPage = 0;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    // double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Nav_Bar(),
      // AppBar - profile pic, profile name, notifications, app icon- log out
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        title: Text(
          'Reallist',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          TextButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              setState(() {
                click = !click;
              });
            },
            child: Icon(
              (click == false) ? Icons.light_mode : Icons.dark_mode,
              size: 30, 
            ),
          ),
          IconButton(
              icon: new Image.asset(
                'assets/logo.png',
                width: 40,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              }
              // exit(0),
              ),
        ],
      ),

      // Bottom nav bar - Home, Override, History, My Team
      bottomNavigationBar: CurvedNavigationBar(
          index: selectedPage,
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.1),

          //backgroundColor: Color.fromRGBO(191, 58, 74, 1).withOpacity(.1),
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          height: 65,
          color: Theme.of(context).colorScheme.primary,
          // color: Color.fromRGBO(191, 58, 74, 1),
          items: [
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                label: 'Home',
                labelStyle: TextStyle(color: Colors.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.white,
                ),
                label: 'Override',
                labelStyle: TextStyle(color: Colors.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.history,
                  size: 30,
                  color: Colors.white,
                ),
                label: 'History',
                labelStyle: TextStyle(color: Colors.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.group,
                  size: 30,
                  color: Colors.white,
                ),
                label: 'My Team',
                labelStyle: TextStyle(color: Colors.white)),
          ]),

      body: Container(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          width: double.infinity,
          height: double.infinity,
          child: Screens[selectedPage]),
    );
  }
}
