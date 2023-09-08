import 'dart:io';

import 'package:flutter/material.dart';

class Nav_Bar extends StatefulWidget {
  const Nav_Bar({super.key});

  @override
  State<Nav_Bar> createState() => _Nav_BarState();
}

class _Nav_BarState extends State<Nav_Bar> {
  bool switchValue = true;
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
          Switch(
              inactiveThumbColor: Color(0xFF00A99D),
              activeColor: Color(0xFFBF3A4A),
              activeThumbImage: AssetImage('assets/logo.png'),
              activeTrackColor: Colors.transparent,
              // inactiveThumbImage: AssetImage('assets/logo1.png'),
              value: switchValue,
              onChanged: (newValue) {
                setState(() {
                  switchValue = newValue;
                });
              }),

          ListTile(
              title: Text('Custom Switch'),
              trailing: Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      // Handle the switch change here
                      if (switchValue) {
                        // Switch is turned on
                        // Add your custom logic here
                        print('Switch is ON');
                      } else {
                        // Switch is turned off
                        // Add your custom logic here
                        print('Switch is OFF');
                      }
                    });
                  })),

          Spacer(),
          ListTile(
            title: Text(
              'App Veraion 0.0.1',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
