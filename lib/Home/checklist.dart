import 'package:flutter/material.dart';
import 'package:reallist/Home/checklist_details.dart';
import 'package:reallist/home_page.dart';

class CheckList extends StatelessWidget {
  const CheckList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Checklist',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.navigate_next,
              size: 25,
              // color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height * 0.80,
                  padding: EdgeInsets.all(10),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 22,
                                // color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                            ),
                            Text(
                              'CHECKLIST',
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
                        SizedBox(height: 10),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          // padding: new EdgeInsets.all(12.0),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                // color: Colors.black,
                                blurRadius: 1.0,
                                spreadRadius: 0.0,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                          child: CheckListDetails(),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
