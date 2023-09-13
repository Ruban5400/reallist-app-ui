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
            width: MediaQuery.of(context).size.width * 0.442,
            margin: EdgeInsets.only(left: 15, bottom: 5),
            padding: new EdgeInsets.all(12.0),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Divider(height: 2),
                Spacer(),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.checklist,
                              size: 18,color: Colors.grey
                            ),
                            Text(
                              'Checklist',
                              style: TextStyle(fontSize: 14,color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
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
                        Row(
                          children: [
                            Icon(
                              Icons.my_location,
                              size: 18,color: Colors.grey
                            ),
                            Text(
                              'Spot',
                              style: TextStyle(fontSize: 14,color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
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
