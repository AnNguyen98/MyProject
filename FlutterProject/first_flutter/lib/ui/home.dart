import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "Container",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.yellow, fontSize: 30),
      ),
    );
  }

}