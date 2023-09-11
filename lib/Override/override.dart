import 'package:flutter/material.dart';

class Override extends StatelessWidget {
  const Override({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 10),
          child: Stack(children: [
            Container(
              alignment: Alignment.center,
              height: 45,
              child: Text(
                'Override',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              // height: 10,
              child: IconButton(
                icon: Icon(
                  Icons.refresh, color: Theme.of(context).colorScheme.primary,
                  size: 24,
                  // color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                      ),
                    ),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
                          size: 25,
                        )),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
                for(int i=0; i<3; i++)
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        // color: Colors.black,
                        blurRadius: 1.0,
                        spreadRadius: 0.0,
                        offset: Offset(-2.0, -2.0),
                      ),
                    ],
                  ),
                  child: Text(
                    'Override details',
                    style: TextStyle(
                        // color: Theme.of(context).colorScheme.primary,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
