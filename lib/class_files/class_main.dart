import 'package:flutter/material.dart';
import 'package:learn_app/class_files/form/form_val.dart';


class ClassShowFile extends StatelessWidget {
  const ClassShowFile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today's Practice"),
        centerTitle: true,
      ),
      body: FormValid(),
    );
  }
}