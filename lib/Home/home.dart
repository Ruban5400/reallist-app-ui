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
          height: MediaQuery.of(context).size.height * 0.30,
          child: TabBarPage(),
        ),
        Container(
            margin: EdgeInsets.only(top: 5, bottom: 30),
            height: 150,
            width: 150,
            child: Icon(
              Icons.qr_code_scanner,
              size: 150,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            )),
        LinearPercentIndicator(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          lineHeight: 15,
          percent: 40 / 100,
          center: Text(
            "40%",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          barRadius: const Radius.circular(50),
          progressColor: Theme.of(context).colorScheme.primary,
          // animation: true,
          // animateFromLastPercent: true,
          backgroundColor: Colors.white,
        ),
        Container(
          // height: 185,
          height: MediaQuery.of(context).size.height * 0.14,
          child: CheckList(),
        ),
      ],
    );
  }
}
