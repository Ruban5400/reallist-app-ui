import 'dart:io';

import 'package:flutter/material.dart';

class Nav_Bar extends StatefulWidget {
  @override
  State<Nav_Bar> createState() => _Nav_BarState();
}

class _Nav_BarState extends State<Nav_Bar> {
  @override
  Widget build(BuildContext context) {
    bool switchValue = true;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Reallist'),
            accountEmail: Text('reallist@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(''),
              ),
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
            leading: Icon(Icons.toggle_on),
            title: Text('Change Theme'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => exit(0),
          ),
          // SizedBox(height: 320),
          Container(
            height: 50,
            child: Switch(
                inactiveThumbColor: Color(0xFF00A99D),
                activeColor: Color(0xFFBF3A4A),
                activeThumbImage: AssetImage('assets/logo.png'),
                activeTrackColor: Colors.transparent,
                inactiveTrackColor: Colors.transparent,
                inactiveThumbImage: AssetImage('assets/logo.png'),
                value: switchValue,
                onChanged: (newValue) {
                  setState(() {
                    switchValue = newValue;
                    // passingValue(switchValue);
                  });
                }),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.28,
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
