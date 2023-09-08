import 'package:flutter/material.dart';
import 'package:reallist/colors.dart';
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
      // Light and Dark theme
      // theme: ThemeData(brightness: Brightness.light),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.system,
      // themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor:Crimson.primaryColor),
        useMaterial3: true,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
