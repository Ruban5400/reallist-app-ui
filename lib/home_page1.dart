// import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:reallist/drawer.dart';
// import 'package:reallist/home_page.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class HomePage1 extends StatefulWidget {
//   @override
//   HomePage1State createState() => HomePage1State();
// }

// class HomePage1State extends State<HomePage1> {
//   var currentIndex = 0;
//   final controller = PageController(viewportFraction: 0.8, keepPage: true);

//   @override
//   Widget build(BuildContext context) {
//     // double displayWidth = MediaQuery.of(context).size.width;
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         drawer: Nav_Bar(),
//         // AppBar - profile pic, profile name, notifications, app icon- log out
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(191, 58, 74, 1),
//           leading: Builder(
//             builder: (context) {
//               return IconButton(
//                 icon: CircleAvatar(),
//                 onPressed: () => Scaffold.of(context).openDrawer(),
//               );
//             },
//           ),
//           title: Text(
//             'Reallist',
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.notifications_none_outlined,
//                 size: 30,
//                 color: Colors.white,
//               ),
//             ),
//             IconButton(
//               icon: new Image.asset(
//                 'assets/logo.png',
//                 width: 40,
//               ),
//               tooltip: 'Close application',
//               onPressed: () => HomePage(),
//               // exit(0),
//             ),
//           ],
//         ),

//         body: Container(
//           color: Color.fromRGBO(191, 58, 74, 1).withOpacity(.1),
//           width: double.infinity,
//           height: double.infinity,
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(
//                     15,
//                   ),
//                 ),
//                 child: TabBar(
//                   // give the indicator a decoration (color and border radius)
//                   labelPadding: EdgeInsets.all(0),
//                   indicator: BoxDecoration(
//                     borderRadius: BorderRadius.circular(
//                       15,
//                     ),
//                     color: Color.fromRGBO(191, 58, 74, 1),
//                   ),
//                   labelColor: Colors.white,
//                   unselectedLabelColor: Colors.black,
//                   tabs: [
//                     // first tab [you can add an icon using the icon property]
//                     Container(
//                       width: 250,
//                       child: Tab(
//                         child: Text(
//                           'Dashboard',
//                           style: TextStyle(
//                             fontSize: 18, // Adjust the font size as needed
//                           ),
//                         ),
//                       ),
//                     ),

//                     // second tab [you can add an icon using the icon property]
//                     Container(
//                       width: 300,
//                       child: Tab(
//                         child: Text(
//                           'My Dashboard',
//                           style: TextStyle(
//                             fontSize: 18, // Adjust the font size as needed
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       for (int i = 0; i < 6; i++)
//                         Container(
//                           width: 174,
//                           height: 95,
//                           margin: EdgeInsets.only(left: 15),
//                           padding: new EdgeInsets.all(10.0),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black,
//                                 blurRadius: 1.0,
//                                 spreadRadius: 0.0,
//                                 offset: Offset(2.0, 2.0),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             // mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               Text(
//                                 'Total',
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                                 textAlign: TextAlign.center,
//                               ),
//                               Row(
//                                 children: [
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Checklist',
//                                         style: TextStyle(fontSize: 18),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                       Text(
//                                         '123',
//                                         style: TextStyle(fontSize: 16),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                     ],
//                                   ),
//                                   Spacer(),
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Spot',
//                                         style: TextStyle(fontSize: 18),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                       Text(
//                                         '12',
//                                         style: TextStyle(fontSize: 16),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       SizedBox(width: 15),
//                     ]),
//               ),
//               SizedBox(height: 15),
//               SmoothPageIndicator(
//                 controller: controller,
//                 count: 3,
//                 effect: const WormEffect(
//                   dotHeight: 8,
//                   dotWidth: 16,
//                   activeDotColor: Color.fromRGBO(191, 58, 74, 1),
//                   type: WormType.thinUnderground,
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
//                 height: 60,
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text(
//                       'Checklist',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     Spacer(),
//                     Icon(
//                       Icons.navigate_next,
//                       size: 30,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),

//         floatingActionButton: Transform.scale(
//           scale:
//               1.3, // Adjust the scale factor as needed (1.0 is the default size)
//           child: FloatingActionButton(
//             onPressed: () {},
//             backgroundColor: Color.fromRGBO(191, 58, 74, 1),
//             elevation: 10,
//             child: Icon(
//               Icons.qr_code_scanner,
//               color: Colors.white,
//               size: 30,
//             ),
//             shape: CircleBorder(),
//           ),
//         ),
//         floatingActionButtonLocation:
//             FloatingActionButtonLocation.miniCenterDocked,

//         // Bottom nav bar - Home, Override, History, My Team
//         bottomNavigationBar: CurvedNavigationBar(
//           backgroundColor: Color.fromRGBO(191, 58, 74, 1).withOpacity(.1),
//           onTap: (index) {},
//           height: 60,
//           color: Colors.white,
//           items: [
//             CurvedNavigationBarItem(
//                 icon: const Icon(
//                   Icons.home,
//                   size: 30,
//                   color: Color.fromRGBO(191, 58, 74, 1),
//                 ),
//                 label: "Home"),
//             CurvedNavigationBarItem(
//                 icon: Icon(
//                   Icons.edit,
//                   size: 30,
//                   color: Color.fromRGBO(191, 58, 74, 1),
//                 ),
//                 label: "Override"),
//             CurvedNavigationBarItem(
//                 icon: Icon(
//                   Icons.history,
//                   size: 30,
//                   color: Color.fromRGBO(191, 58, 74, 1),
//                 ),
//                 label: "History"),
//             CurvedNavigationBarItem(
//                 icon: Icon(
//                   Icons.group,
//                   size: 30,
//                   color: Color.fromRGBO(191, 58, 74, 1),
//                 ),
//                 label: "My Team"),
//           ],
//         ),
//       ),
//     );
//   }
// }
