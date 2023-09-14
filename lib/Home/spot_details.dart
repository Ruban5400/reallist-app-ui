import 'package:flutter/material.dart';

class SpotDetails extends StatelessWidget {
  const SpotDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 45),
      padding: EdgeInsets.all(15),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Text(
            'Checklist_name',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Icon(Icons.keyboard_double_arrow_down_rounded),
          Text(
            'Spot name',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Spacer(),
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
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Spacer(),
              Text(
                'Time',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
