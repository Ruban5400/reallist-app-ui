import 'dart:io';

import 'package:flutter/material.dart';

class Nav_Bar extends StatefulWidget {
  @override
  State<Nav_Bar> createState() => _Nav_BarState();
}

class _Nav_BarState extends State<Nav_Bar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Emp_Name'),
            accountEmail: Text('empname@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
          
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => exit(0),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Spacer(),
          ),
          ListTile(
            title: Text(
              'App Version 0.0.1',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
