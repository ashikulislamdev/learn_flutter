import 'package:flutter/material.dart';
import 'package:learn_app/calculator/buttonWidget.dart';
import 'package:learn_app/calculator/calculator_color.dart';
import 'package:velocity_x/velocity_x.dart';


class MyCalculator extends StatefulWidget {
  const MyCalculator({ Key? key }) : super(key: key);

  @override
  My_CalculatorState createState() => My_CalculatorState();
}

class My_CalculatorState extends State<MyCalculator> {

  int firstNum = 0;
  int lastNum = 0;
  String histry = '';
  String textToDisplay = '10';
  String res = '10';
  String oparetion = '-';
  
  void btnOnClick(String btnVal){
    print(btnVal);
    if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      lastNum = 0;
      res = '';
    }else if (btnVal == 'x') {
      textToDisplay = '';
      firstNum = 0;
      lastNum = 0;
      res = '';
      histry = '';
    }else if (btnVal == '+' || btnVal == '-' || btnVal == '*' || btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      oparetion = btnVal;
    } else if (btnVal == '=') {
      lastNum = int.parse(textToDisplay);
      if (oparetion == '+') {
        res = (firstNum + lastNum).toString();
        histry = firstNum.toString() + oparetion.toString() + lastNum.toString();
      }
      if (oparetion == '-') {
        res = (firstNum - lastNum).toString();
        histry = firstNum.toString() + oparetion.toString() + lastNum.toString();
      }
      if (oparetion == '*') {
        res = (firstNum * lastNum).toString();
        histry = firstNum.toString() + oparetion.toString() + lastNum.toString();
      }
      if (oparetion == '/') {
        res = (firstNum / lastNum).toString();
        histry = firstNum.toString() + oparetion.toString() + lastNum.toString();
      }else{
        res = int.parse(textToDisplay + btnVal).toString();
      }

    }
      setState(() {
        textToDisplay = res;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "New Calculator".text.make().centered(),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textToDisplay.text.xl6.color(CalColor.numbers).overflow(TextOverflow.ellipsis).make(),
                  histry.text.xl4.color(CalColor.numbers).overflow(TextOverflow.ellipsis).make(),
                ],
              ),
            ), 
            ),
            Expanded(flex: 2, 
              child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CalColor.bg2,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: 'C', callback: btnOnClick,),2.widthBox,

                        CalculatorButton(button_text: 'x', callback: btnOnClick,),2.widthBox,

                        CalculatorButton(button_text: '>', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '/', callback: btnOnClick),
                      ],
                    ),
                  ),2.heightBox,
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '9', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '8', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '7', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '*', callback: btnOnClick),2.widthBox,
                      ],
                    ),
                  ),2.heightBox,
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '6', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '5', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '4', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '-', callback: btnOnClick),
                      ],
                    ),
                  ),2.heightBox,
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '1', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '2', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '3', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '+', callback: btnOnClick),2.widthBox,
                      ],
                    ),
                  ),2.heightBox,

                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '0', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '00', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '.', callback: btnOnClick),2.widthBox,

                        CalculatorButton(button_text: '=', callback: btnOnClick),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );

     /* Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: "New Calculator".text.color(context.theme.accentColor).make(),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "20 + 30".text.xl3.color(context.accentColor).make().p8(),
                    " = 50".text.xl3.color(context.accentColor).make().p8(),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        input = input + '1';
                        print(input);
                      });
                    },
                    child: Container(
                      color: context.accentColor,
                      alignment: Alignment.center,
                      child: "1".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                    ),
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "2".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "3".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "+".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
              ],
            ),
          ),2.heightBox,
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "4".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "5".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "6".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "-".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
              ],
            ),
          ),2.heightBox,
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "7".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "8".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "9".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "X".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
              ],
            ),
          ),2.heightBox,
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "0".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "C".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
                2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "=".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),2.widthBox,
                Expanded(
                  child: Container(
                    color: context.accentColor,
                    alignment: Alignment.center,
                    child: "/".text.xl2.bold.color(context.canvasColor).center.make(),   //.wFull(context)
                  ),
                ),
              ],
            ),
          ),2.heightBox,
        ],
      ),
    ) */

  }
}