import 'package:flutter/material.dart';

class Pixel extends StatelessWidget{
  var color;
  var child;
  Pixel({super.key,
    required this.color,
    required this.child,

  });


  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      margin: EdgeInsets.all(1), //space between the boxes
      child: Center(
        child: Text(
          child.toString(),
          style:TextStyle(
              color: Colors.white),),),
    );

  }
}