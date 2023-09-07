import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

  @override
  Widget build(BuildContext context) {
    // double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Nav_Bar(),
      // AppBar - profile pic, profile name, notifications, app icon- log out
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 58, 74, 1),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: CircleAvatar(),
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
          backgroundColor: Color.fromRGBO(191, 58, 74, 1).withOpacity(.1),
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          height: 55,
          color: Color.fromRGBO(191, 58, 74, 1),
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.edit,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.history,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.group,
              size: 30,
              color: Colors.white,
            ),
          ]),

      body: Container(
          color: Color.fromRGBO(191, 58, 74, 1).withOpacity(.1),
          width: double.infinity,
          height: double.infinity,
          child: Screens[selectedPage]),
    );
  }
}
