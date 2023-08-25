import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(235, 195, 200, 1),
              Color.fromRGBO(191, 58, 74, 1),
              Color.fromRGBO(152, 46, 59, 1)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 50, bottom: 15),
              child: Text(
                'Reallist',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                'Sign In to your Account',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Employee Id',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                filled: true,
                fillColor: Color.fromRGBO(246, 246, 246, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Text(
              'Password',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            TextField(
              obscureText: passenable,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 10),
                filled: true,
                fillColor: Color.fromRGBO(246, 246, 246, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: passenable
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      passenable = !passenable;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 20.0),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            ))),
                onPressed: () {},
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
