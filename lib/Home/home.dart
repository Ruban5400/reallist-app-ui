import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:reallist/Home/checklist.dart';
import 'package:reallist/Home/dashboards.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 185,
          height: MediaQuery.of(context).size.height * 0.22,
          child: TabBarPage(),
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
          // height: 185,
          height: MediaQuery.of(context).size.height * 0.15,
          child: CheckList(),
        ),
      ],
    );
  }
}
