import 'package:flutter/material.dart';

class ExerciseListSavedConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF1FAEE),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //spacing
            //------------------------------------
            SizedBox(
              height: 150.0,
            ),
            //------------------------------------

            //circular icon with tick image
            //------------------------------------
            Center(
              child: Container(
                width: 160,
                height: 160,
                child: CircleAvatar(
                  backgroundColor: const Color(0xFF04A489),
                  child: ClipOval(
                    child: Padding(
                        padding: EdgeInsets.all(35.0),
                        child: Image.asset("images/tick2.png")),
                  ),
                ),
              ),
            ),
            //------------------------------------

            //spacing
            //------------------------------------
            SizedBox(
              height: 80.0,
            ),
            //------------------------------------

            //Text: Exercise List
            //------------------------------------
            Text(
              'Exercise List',
              style: TextStyle(
                fontFamily: 'Museo',
                color: const Color(0xFFF57E00),
                fontSize: 50.0,
              ),
              textAlign: TextAlign.center,
            ),
            //------------------------------------

            //Text: saved successfully!
            //------------------------------------
            Text(
              'saved\nsuccessfully!',
              style: TextStyle(
                fontFamily: 'Museo',
                color: const Color(0xFF1E325C),
                fontSize: 50.0,
              ),
              textAlign: TextAlign.center,
            ),
            //------------------------------------

            //spacing
            //------------------------------------
            SizedBox(
              height: 80.0,
            ),
            //------------------------------------

            //button
            //------------------------------------
            Container(
              height: 100.0,
              width: 300.0,
              margin: EdgeInsets.all(20.0),
              child: Material(
                borderRadius: BorderRadius.circular(40),
                shadowColor: Colors.blue,
                color: const Color(0xFFFFC247),
                elevation: 5,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Go back to Home Page',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //------------------------------------
          ],
        ),
        //------------------------------------------------
      ),
    );
  }
}
