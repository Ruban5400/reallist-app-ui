import 'package:flutter/material.dart';

class MyTeam extends StatelessWidget {
  const MyTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 10),
          child: Stack(children: [
            Container(
              alignment: Alignment.center,
              height: 48,
              child: Text(
                'MY TEAM',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black,
                          blurRadius: 1.0,
                          spreadRadius: 0.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Team : ',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 16),
                            ),
                            Text(
                              'KCH_Facility Services_Transport',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Role : ',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 16),
                            ),
                            Text(
                              'Assessor',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
