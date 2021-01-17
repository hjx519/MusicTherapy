import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlayerOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final blue = const Color(0xFF1E325C);
    final white = const Color(0xFFFFFBF2);
    return MaterialApp(
        home: Scaffold(
      //------------------------
      //Main Background
      backgroundColor: const Color(0xFFF1FAEE),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //------------------------
            //Back button
            Container(
              margin: EdgeInsets.only(left: 30),
              width: 50,
              height: 50,
              child: Material(
                borderRadius: BorderRadius.circular(10000),
                shadowColor: blue,
                color: white,
                elevation: 5,
                child: GestureDetector(
                  onTap: () {},
                  child: ClipOval(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        left: 12,
                        right: 12,
                        bottom: 12,
                      ),
                      child: Image.asset('images/arrow.jpeg'),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //----------------------
                  //Player's Avatar
                  Container(
                    margin: EdgeInsets.all(30),
                    width: 180,
                    height: 180,
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.orange,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child:
                                Image.asset('images/lion.png'), //avatar image
                          ),
                        ),
                      ),
                    ),
                  ),
                  //----------------------
                  //Text: Player Options
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text(
                      'Player Options',
                      style: TextStyle(
                        fontSize: height * 0.05,
                        color: const Color(0xFF1E325C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //----------------------
                  //Button: Assign Exercises
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 120,
                    width: width * 0.8,
                    child: Material(
                      borderRadius: BorderRadius.circular(40),
                      shadowColor: Colors.grey[300],
                      color: const Color(0xFFFFC247),
                      elevation: 5,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              'Assign Exercises\nto Player',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //----------------------
                  //Button: Assign Exercises
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 120,
                    width: width * 0.8,
                    child: Material(
                      borderRadius: BorderRadius.circular(40),
                      shadowColor: Colors.grey[300],
                      color: const Color(0xFFFFC247),
                      elevation: 5,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              'View Player\nStatistics',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
