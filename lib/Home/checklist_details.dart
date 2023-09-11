import 'package:flutter/material.dart';
import 'package:reallist/Home/spots.dart';

class CheckListDetails extends StatelessWidget {
  const CheckListDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height * 0.56,
            padding: EdgeInsets.all(10),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0),
              ),
            ),
            child: SpotList(),
          ),
        );
      },
      child: Text(
        'Oxygen Cylinder Refill Checklist ',
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
