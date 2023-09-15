import 'package:flutter/material.dart';


class HistDetails extends StatelessWidget {
  const HistDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                  ),
                  Text(
                    'List-history',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.refresh,
                      size: 24,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
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
                    for (int i = 0; i < 3; i++)
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(top: 15),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(1),
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
                        child: Text(
                          'Spots',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
