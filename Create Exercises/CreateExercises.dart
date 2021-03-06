import 'package:flutter/material.dart';

class CreateExercises extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final blue = const Color(0xFF1E325C);
    // TODO: implement build
    return MaterialApp(
home:Scaffold(
backgroundColor: Colors.green[50],
body: 
//-----------------------------------------
// Back Button:
   Stack(
          children: <Widget>[      
               
              Positioned(
                top: 15,
                left: 40,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(10000),
                    shadowColor: blue,
                    elevation: 5,
                    child: GestureDetector(
                      onTap: () {},
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 10,
                            right: 12,
                            bottom: 12,
                          ),
                          child: Image.asset(
                            "assets/images/arrow.jpeg",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
//--------------------------------------------------------
//Center+Column+Text...
//Text "upload exercise video"
Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

        Text(
              'Upload\nExercise Video',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontFamily: 'Museo',
              fontSize: height * 0.04,
              color: const Color(0xFF1E325C),
              fontWeight: FontWeight.w700,
              ),
            ),
//--------------------------------------------------
//Container+Stack+Center+SingleChildScrollView+Column
    Container(
    height: height*0.6,
    width:width*0.8,
       decoration: BoxDecoration(  
       color:const Color(0xFFFFFBF2),//Container color
       borderRadius: BorderRadius.all(
       Radius.circular(15),  
      )
      ),
    child:Stack(
      children: [
        Center(
         child: SingleChildScrollView(         
          child:Column
          (children: [
           
 //Text "Enter Exercise Name:"
SizedBox(height:height*0.04),//gap      
SizedBox(
  width: width*0.7,
  height: 40,
  child:Card(
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
    color: const Color(0xFF04A489),
    child:Padding(
    padding: const EdgeInsets.all(7),
      child: Text(                              
      '  Enter Exercise Name: ',
      textAlign: TextAlign.justify,
      style: TextStyle(
      fontFamily: 'Museo',
      fontSize: 15,
      color: Colors.white,
      fontWeight: FontWeight.bold),
      ),
    ),
  ),
),
                     
//TextField in Card
SizedBox(height:8),//gap
SizedBox(
  width: width*0.7,
  height: 40,
  child:Card(
    elevation: 3,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
    color: Colors.white, 
    //margin: EdgeInsets.all(20),
    child:TextField(),
  ),
),

//Text: "Upload video below:"
SizedBox(height:height*0.05),//gap   
SizedBox(
  width: width*0.7,
  height: 40,
  child:Card(
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
    color: Colors.amber[600],
    child:Padding(
    padding: const EdgeInsets.all(7),
    child: Text(                              
    '  Upload video below:',
     style: TextStyle(
     fontFamily: 'Museo',
     fontSize: 15,
     color: Colors.white,
     fontWeight: FontWeight.bold),
      ),
    ),
  ),
),

//browse file region
SizedBox(height:8),//gap
    Container( 
      width: width*0.7,
      height: height*0.25,
      child: RaisedButton(
        onPressed: (){}, //Function of the button when press
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
          ),
    child: Text(                              
    'Click to browse file/\ndrag & drop',
    //move the text to center horizontally
    textAlign:TextAlign.center,
     style: TextStyle(
     fontFamily: 'Museo',
     fontSize: 18,
     color: Colors.grey[400],
     fontWeight: FontWeight.bold),
      ),
    )
   ),
//----------------------------------------------------
//Text: "Upload data file below"
SizedBox(height:height*0.05),//gap   
SizedBox(
  width: width*0.7,
  height: 40,
  child:Card(
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
    color: Colors.amber[600],
    child:Padding(
    padding: const EdgeInsets.all(7),
    child: Text(                              
    '  Upload data file below: ',
     style: TextStyle(
     fontFamily: 'Museo',
     fontSize: 15,
     color: Colors.white,
     fontWeight: FontWeight.bold),
      ),
    ),
  ),
),

//browse file region
SizedBox(height:8),//gap
    Container( 
      width: width*0.7,
      height: height*0.25,
      child: RaisedButton(
        onPressed: (){}, //Function of the button when press
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
          ),
    child: Text(                              
    'Click to browse file/\ndrag & drop',
    //move the text to center horizontally
    textAlign:TextAlign.center,
     style: TextStyle(
     fontFamily: 'Museo',
     fontSize: 18,
     color: Colors.grey[400],
     fontWeight: FontWeight.bold),
      ),
    )
   ),
            ],)//column
          ),
         ),
        ],//children
       )
      ),
  
//-----------------------------------------------------
//Orange Upload Button
    Container( 
      height: 50.0,
      width:width*0.8,
      child: RaisedButton(
        onPressed: (){}, //Function of the button when press
        color: Colors.orange[700],
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Text(
        'Click to upload ',
       style: TextStyle(
       fontFamily: 'Museo',
       color: Colors.white,
       fontSize: height * 0.025,
       fontWeight: FontWeight.bold,
        )
     ), 
    )
   ),
//-----------------------------------------------------     
  ],
 ),
),//Center
            ],  
          ),//stack
        ),
      );
    }
  }  