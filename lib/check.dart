import 'package:flutter/material.dart';

class Checking extends StatefulWidget {
  const Checking({super.key});

  @override
  State<Checking> createState() => _CheckingState();
}

class _CheckingState extends State<Checking> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Call Manager'),
          SizedBox(
            height: 50,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)),
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.orange),
                controller: tabController,
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 30),
                tabs: [
                  Tab(
                    child: Text('Missed'),
                  ),
                  Tab(
                    child: Text('Received'),
                  ),
                  Tab(
                    child: Text('Dialed'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
