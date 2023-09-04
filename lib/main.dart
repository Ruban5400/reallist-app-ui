import 'package:flutter/material.dart';
import 'package:reallist/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real_list app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(191, 58, 74, 1)),
        useMaterial3: true,
      ),
      home:  HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
