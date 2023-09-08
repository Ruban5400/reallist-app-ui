import 'package:flutter/material.dart';

class DashboardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> heads = [
      'Total',
      'Completed',
      'Assigned',
      'Pending',
      'Upcomming',
      'Override'
    ];

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        for (int i = 0; i < 6; i++)
          Container(
            width: 174,
            margin: EdgeInsets.only(left: 15, bottom: 5),
            padding: new EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '${heads[i]}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Checklist',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '123',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'Spot',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '12',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        SizedBox(width: 15),
        // ]),
      ],
    );
  }
}
