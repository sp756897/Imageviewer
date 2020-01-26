import 'dart:async';
import 'package:flutter/material.dart';
import 'peace.dart';

void main(){
runApp(
  MaterialApp(
    home:MyApp()
  )
);
}

class MyApp extends StatefulWidget{
  _Myapp createState()=>_Myapp();
}
class _Myapp extends State<MyApp>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      milliseconds:1500
    ),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Vi()));
    }
    );
  }
  bool isl=false;
  var k=1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        // Add box decoration
        decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
        // Where the linear gradient begins and ends
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        // Add one stop for each color. Stops should increase from 0 to 1
        stops: [0.1, 0.5, 0.7, 0.999],
        colors: [
        // Colors are easy thanks to Flutter's Colors class.
        Colors.red[800],
        Colors.orange[700],
        Colors.orange[600],
        Colors.yellow,
        ],
        ),),
        child:    Center(child:AnimatedDefaultTextStyle(

    style: isl? TextStyle(color: Colors.black,fontSize: 30,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic): TextStyle(color: Colors.white,fontSize: 50,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic),

    duration: const Duration(microseconds: 100),
    child: Text("Kartik's App"),

    )),

    )  );
  }


}