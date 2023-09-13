import 'package:flutter/material.dart';

// class DashboardList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<String> heads = [
//       'Total',
//       'Completed',
//       'Assigned',
//       'Pending',
//       'Upcomming',
//       'Override'
//     ];

//     return ListView(
//       scrollDirection: Axis.horizontal,
//       children: [

//         for (int i = 0; i < 6; i++)
//           Container(
//             width: MediaQuery.of(context).size.width * 0.442,

//             margin: EdgeInsets.only(left: 15, bottom: 10),
//             padding: new EdgeInsets.all(12.0),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black,
//                   blurRadius: 1.0,
//                   spreadRadius: 0.0,
//                   offset: Offset(2.0, 2.0),
//                 ),
//               ],
//             ),
//             child: Column(
//               // mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Text(
//                   '${heads[i]}',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                   textAlign: TextAlign.center,
//                 ),

//                 Divider(height: 10),

//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.checklist,
//                               size: 18,color: Colors.grey
//                             ),
//                             Text(
//                               'Checklist',
//                               style: TextStyle(fontSize: 14,color: Colors.grey),
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Text(
//                           '123',
//                           style: TextStyle(fontSize: 16),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Column(
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.my_location,
//                               size: 18,color: Colors.grey
//                             ),
//                             Text(
//                               'Spot',
//                               style: TextStyle(fontSize: 14,color: Colors.grey),
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Text(
//                           '12',
//                           style: TextStyle(fontSize: 16),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         SizedBox(width: 15),
//         // ]),
//       ],
//     );
//   }
// }

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardList extends StatefulWidget {
  const DashboardList({Key? key}) : super(key: key);
  

  @override
  State<DashboardList> createState() => _DashboardListState();
}

class _DashboardListState extends State<DashboardList> {
  // Color mainColor =Theme.of(context).colorScheme.primary;
  final PageController _pageController =
      PageController(viewportFraction: 0.65, keepPage: true,initialPage: 1);

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
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.01),
      body: Column(
          children: [
            
            SizedBox(
              height: 110,
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
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                          Spacer(),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.task_alt,
                                      size: 18,
                                      color:
                                          Theme.of(context).colorScheme.primary),
                                  Text(
                                    'Over All',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
      
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _pageController, // PageController
                  count: imagesUrl.length,
                  effect: JumpingDotEffect(
                    verticalOffset: 10,
                    dotHeight: 6,
                    activeDotColor: Theme.of(context).colorScheme.primary,
                  ), // your preferred effect
                  onDotClicked: (index) {},
                ),
              ],
            ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     SmoothPageIndicator(
            //       controller: _pageController, // PageController
            //       count: imagesUrl.length,
            //       effect: SwapEffect(
            //         activeDotColor: mainColor,
            //         type: SwapType.yRotation,
            //       ), // your preferred effect
            //       onDotClicked: (index) {},
            //     ),
            //   ],
            // ),
          ],
        ),
      
    );
  }
}
