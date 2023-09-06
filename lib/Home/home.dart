import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:reallist/Home/dashboards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Column(
      children: [
        Container(height: 200,child: TabBarPage(),),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: TabBar(
            // give the indicator a decoration (color and border radius)
            labelPadding: EdgeInsets.all(0),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              color: Color.fromRGBO(191, 58, 74, 1),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              // first tab [you can add an icon using the icon property]
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

              // second tab [you can add an icon using the icon property]
              Container(
                width: 300,
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            for (int i = 0; i < 6; i++)
              Container(
                width: 174,
                height: 95,
                margin: EdgeInsets.only(left: 15),
                padding: new EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 0),
                    ),
                  ],
                ),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
          ]),
        ),
        SizedBox(height: 15),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 16,
            activeDotColor: Color.fromRGBO(191, 58, 74, 1),
            type: WormType.thinUnderground,
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            height: 150,
            width: 150,
            child: Image.asset("assets/qr.png")),
        LinearPercentIndicator(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          lineHeight: 15,
          percent: 40 / 100,
          center: Text(
            "40%",
            style: const TextStyle(fontSize: 11),
          ),
          barRadius: const Radius.circular(50),
          progressColor: Color.fromRGBO(191, 58, 74, 1),
          // animation: true,
          // animateFromLastPercent: true,
          backgroundColor: Colors.white,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Checklist',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.navigate_next,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
