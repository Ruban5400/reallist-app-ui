import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 58, 74, 1),
        leading: IconButton(
          icon: CircleAvatar(backgroundImage: NetworkImage("")),
          onPressed: () {},
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
            tooltip: 'Close application',
            onPressed: () => exit(0),
          ),
        ],
      ),
      drawer: Drawer(backgroundColor: Colors.yellow),
      body: Container(
        color: Color.fromRGBO(191, 58, 74, 1).withOpacity(.1),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromRGBO(191, 58, 74, 1).withOpacity(.1),
          onTap: (index) {},
          height: 60,
          color: Color.fromRGBO(191, 58, 74, 1),
          items: [
            Icon(
              Icons.home,
              size: 35,
              color: Colors.white,
            ),
            Icon(
              Icons.edit,
              size: 35,
              color: Colors.white,
            ),
            Icon(
              Icons.history,
              size: 35,
              color: Colors.white,
            ),
            Icon(
              Icons.group,
              size: 35,
              color: Colors.white,
            ),
          ]),
    );
  }
}
