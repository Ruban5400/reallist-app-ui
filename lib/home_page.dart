import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reallist/History/history.dart';
import 'package:reallist/Home/home.dart';

import 'package:reallist/My%20Team/myteam.dart';
import 'package:reallist/Override/override.dart';
import 'package:reallist/App%20Theme/colors.dart';
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
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
        drawer: Nav_Bar(),
        // AppBar - profile pic, profile name, notifications, app icon- log out
        appBar: AppBar(foregroundColor: Colors.white,
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
            'Emp_Name',
            style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 25,
               
              ),
            ),
            IconButton(
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                },
                icon: Icon(
                  themeNotifier.isDark ? Icons.light_mode : Icons.dark_mode,
                  size: 25,
                  
                )),
            IconButton(
                icon: new Image.asset(
                  'assets/images/logo.png',
                  width: 35,
                ),
                onPressed: () { selectedPage!=0 ?
                  (Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  )): null;
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
            height: 57,
            color: Theme.of(context).colorScheme.primary,
            // color: Color.fromRGBO(191, 58, 74, 1),
            items: [
              CurvedNavigationBarItem(
                  child: Icon(
                    Icons.home_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  label: 'Home',
                  labelStyle: TextStyle(color: Colors.white,fontSize: 12)),
              CurvedNavigationBarItem(
                  child: Icon(
                    Icons.edit,
                    size: 25,
                    color: Colors.white,
                  ),
                  label: 'Override',
                  labelStyle: TextStyle(color: Colors.white,fontSize: 12)),
              CurvedNavigationBarItem(
                  child: Icon(
                    Icons.history,
                    size: 25,
                    color: Colors.white,
                  ),
                  label: 'History',
                  labelStyle: TextStyle(color: Colors.white,fontSize: 12)),
              CurvedNavigationBarItem(
                  child: Icon(
                    Icons.group,
                    size: 25,
                    color: Colors.white,
                  ),
                  label: 'My Team',
                  labelStyle: TextStyle(color: Colors.white,fontSize: 12)),
            ]),

        body: Container(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            width: double.infinity,
            height: double.infinity,
            child: Screens[selectedPage]),
      );
    });
  }
}
