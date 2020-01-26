import 'dart:io';

import 'package:flutter/material.dart';
class Vi extends StatefulWidget {
  const Vi({ Key key }) : super(key: key);


  @override
  _Vi createState() => _Vi();
}

class _Vi extends State<Vi> {
  List<String> ls=['assets/1.jpg','assets/2.jpg','assets/3.jpg','assets/4.jpg','assets/5.jpg'];
  var x=0;




  void onPressed(){

    setState(() {
      if(x<ls.length-1) {
        x += 1;

      }
      else{x=0;}
    });
  }
  void onPressed1(){
    setState(() {
      if(x>0) {
        x -= 1;

      }
      else{x=ls.length-1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Veiwer"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(


        child: Column(

            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[


              Image.asset(ls[x],height: 290,width:360,),
              SizedBox(height: 250,),
              Row(

                children: <Widget>[

                  SizedBox(width: 15,),

                  new FloatingActionButton(
                    heroTag: "btn1",

                    child:Icon( Icons.arrow_left),
                    backgroundColor: Colors.orange,
                    onPressed: onPressed1,

                  ),
                  SizedBox(width: 200),

                  new FloatingActionButton(
                    heroTag: "btn2",
                    child:Icon( Icons.arrow_right),
                    backgroundColor: Colors.blue,
                    onPressed: onPressed,
                  ),
                ],)
            ]),
      ),



    ); ;
  }
}