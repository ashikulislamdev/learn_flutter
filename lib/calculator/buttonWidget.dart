import 'package:flutter/material.dart';
import 'package:learn_app/calculator/calculator_color.dart';
import 'package:velocity_x/velocity_x.dart';

class CalculatorButton extends StatelessWidget {
  final String button_text;
  final Function btnOnClick;
  const CalculatorButton({ Key? key, required this.button_text, required this.btnOnClick }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: ()=> btnOnClick(button_text),
        child: button_text.text.xl5.center.bold.color(CalColor.numbers).make().whFull(context).pOnly(top: 15),
        style: ElevatedButton.styleFrom(
          primary: CalColor.bg1,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15) 
          )
        ),
      ),
    );
  }
}