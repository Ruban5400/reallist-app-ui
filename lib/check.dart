import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color mainColor = Colors.yellow;
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);

  List<String> imagesUrl = [
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
      
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: PageView.builder(
              controller: _pageController,
              itemCount: imagesUrl.length,
              itemBuilder: (_, index) => Container(
            // width: MediaQuery.of(context).size.width * 0.6,
            
            margin: EdgeInsets.only(left: 15, bottom: 10),
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
                  '${imagesUrl[index]}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
               
                Divider(height: 10),
                
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
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Worm Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: WormEffect(
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Expanding Dots Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: ExpandingDotsEffect(
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Jumping Dot Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: JumpingDotEffect(
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
      
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Jumping Dot Effect (vertical offset: 20)",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: JumpingDotEffect(
                  verticalOffset: 20,
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
          
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Swap Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: SwapEffect(
                  activeDotColor: mainColor,
                  type:SwapType.yRotation, 
                ), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}