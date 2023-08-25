import 'package:flutter/material.dart';
import 'package:reallist/sign_in.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Sign_in()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(191, 58, 74, 1),
      body: Center(
        child: Container(
          width: 180,
          color: Colors.green,
          child: Image.asset(
            'assets/logo.png',
          ),
        ),
      ),
    );
  }
}
