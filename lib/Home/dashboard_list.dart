import 'package:flutter/material.dart';
import 'package:reallist/Home/db_checklist.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardList extends StatefulWidget {
  const DashboardList({Key? key}) : super(key: key);

  @override
  State<DashboardList> createState() => _DashboardListState();
}

class _DashboardListState extends State<DashboardList> {
  final PageController _pageController =
      PageController(viewportFraction: 0.55, keepPage: true, initialPage: 1);

  List<String> heads = [
    'Total',
    'Completed',
    'Assigned',
    'Pending',
    'Upcomming',
    'Override'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.01),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 125,
            child: PageView.builder(
              controller: _pageController,
              itemCount: heads.length,
              itemBuilder: (_, index) => AnimatedBuilder(
                animation: _pageController,
                builder: (context, child) {
                  double value = 0.0;
                  if (_pageController.position.haveDimensions) {
                    value = index.toDouble() - (_pageController.page ?? 0);
                    value = (value * 0.038).clamp(-1, 1);
                  }
                  return Transform.rotate(
                    angle: 4 * value,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => DB_Checklist()),
                          ),
                        );
                      },
                      child: Container(
                        // width: MediaQuery.of(context).size.width * 0.6,

                        margin: EdgeInsets.only(left: 15, bottom: 10, top: 15),
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
                          children: <Widget>[
                            Text(
                              '${heads[index]}',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            Divider(height: 10),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.checklist,
                                            size: 18, color: Colors.grey),
                                        Text(
                                          'Checklist',
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
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
                                        Icon(Icons.my_location,
                                            size: 18, color: Colors.grey),
                                        Text(
                                          'Spot',
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
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
                    ),
                  );
                },
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController, // PageController
            count: heads.length,
            effect: SwapEffect(
              dotHeight: 6,
              activeDotColor: Theme.of(context).colorScheme.primary,
              type: SwapType.yRotation,
            ), // your preferred effect
            onDotClicked: (index) {},
          ),
        ],
      ),
    );
  }
}
