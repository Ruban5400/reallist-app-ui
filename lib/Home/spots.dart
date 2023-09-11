import 'package:flutter/material.dart';
import 'package:reallist/Home/spot_details.dart';
import 'package:reallist/home_page.dart';

class SpotList extends StatelessWidget {
  const SpotList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SPOTS',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(
                  Icons.refresh,
                  size: 24,
                  // color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Divider(
            height: 2,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: new EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  blurRadius: 3.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
            child: TextButton(
              child: Text(
                'SPOT Name',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    padding: EdgeInsets.all(10),

                    // decoration: new BoxDecoration(
                    //   color: Colors.white,
                    //   borderRadius: new BorderRadius.only(
                    //     topLeft: const Radius.circular(25.0),
                    //     topRight: const Radius.circular(25.0),
                    //   ),
                    // ),
                    child: SpotDetails(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
