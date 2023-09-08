import 'package:flutter/material.dart';
import 'package:reallist/Home/dashboard_list.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(191, 58, 74, 1).withOpacity(.01),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          height: 170,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                ),
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                    color: Color.fromRGBO(191, 58, 74, 1),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  controller: tabController,
                  tabs: [
                    Container(
                      width: 250,
                      child: Tab(
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 18, // Adjust the font size as needed
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Tab(
                        child: Text(
                          'My Dashboard',
                          style: TextStyle(
                            fontSize: 18, // Adjust the font size as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    DashboardList(),
                    DashboardList(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}