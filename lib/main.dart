import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reallist/colors.dart';
import 'package:reallist/home_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer(
          builder: (context, ThemeModel themeNotifier, child) {
            return MaterialApp(
              title: 'Real_list app',
              // Light and Dark theme
              // theme: ThemeData(brightness: Brightness.light),
              // darkTheme: ThemeData(brightness: Brightness.dark),
              // themeMode: ThemeMode.system,
              // themeMode: ThemeMode.light,

              // ignore: dead_code
              theme: themeNotifier.isDark ? ThemeClass.crimsonTheme : ThemeClass.tealTheme,

              home: HomePage(),
              debugShowCheckedModeBanner: false,
            );
          },
        ));
  }
}
