import 'package:flutter/material.dart';

class SpotDetails extends StatelessWidget {
  const SpotDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 79),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: new BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: new BorderRadius.all(
            Radius.circular(15),
          ),
          ),
      child: Column(
        children: [
          Text(
            'Checklist_name',
            style: TextStyle(
                fontSize: 18, color: Colors.white),
          ),
          // Icon(Icons.keyboard_double_arrow_down_rounded),
          Text(
            'Spot name',
            style: TextStyle(
                fontSize: 16, color: Colors.white),
          ),
          // Spacer(),
          Row(
            children: [
              Text(
                'Created by',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Text(
                'Time',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 16, color: Colors.white),
              ),
              Spacer(),
              Text(
                'Time',
                style: TextStyle(
                    fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
