import 'package:flutter/material.dart';

import 'borderBox.dart';

class ClassShowFile extends StatelessWidget {
  const ClassShowFile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today's Practice"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: BorderBox(height: 100, width: 180, name: "White One", myColor: Colors.red,),
          ),SizedBox(height: 2,),
          Container(
            child: BorderBox(height: 100, width: 180, name: "Rabiull Hassan", myColor: Colors.blue,),
          ),SizedBox(height: 2,),
          Container(
            child: BorderBox(height: 100, width: 180, name: "Otol Khan", myColor: Colors.black,),
          ),SizedBox(height: 2,),
          Container(
            child: BorderBox(height: 100, width: 180, name: "Anisul Hoqe", myColor: Colors.deepPurple,),
          ),
        ],
      ),
    );
  }
}