import 'package:flutter/material.dart';
import 'package:reallist/Home/spot_details.dart';

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
                  builder: (context) => Container(
                    // margin: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: new BoxDecoration(
                        color: Color(0xFFffffff).withOpacity(1),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(30),
                        )),
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
