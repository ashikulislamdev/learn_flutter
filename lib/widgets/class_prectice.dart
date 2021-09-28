import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class classPrectice extends StatelessWidget {
  const classPrectice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: Text("White"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}