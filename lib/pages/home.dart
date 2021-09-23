import 'package:flutter/material.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({ Key? key }) : super(key: key);

  final int days = 30;
  final String name = "White";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
        centerTitle: true,
      ),

      drawer: Drawer(),

      body: Container(
        child: Center(
          child: Text("Wellcome to $days of fluuter by $name"),
        ),
      ),
    );
  }
}