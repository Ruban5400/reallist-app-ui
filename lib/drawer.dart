import 'dart:io';

import 'package:flutter/material.dart';

class Nav_Bar extends StatelessWidget {
  const Nav_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Reallist'),
            accountEmail: Text('reallist@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/abc.png'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){},
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
          Spacer(),
          ListTile(
            
            title: Text('App Veraion 0.0.1',textAlign:  TextAlign.center,),
            
          ),

        ],
      ),
    );
  }
}
