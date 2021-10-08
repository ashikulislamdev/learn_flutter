import 'package:flutter/material.dart';
import 'package:learn_app/calculator/buttonWidget.dart';
import 'package:learn_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:math_expressions/math_expressions.dart';


class MyCalculator extends StatefulWidget {
  const MyCalculator({ Key? key }) : super(key: key);

  @override
  My_CalculatorState createState() => My_CalculatorState();
}

class My_CalculatorState extends State<MyCalculator> {

  String eqution = '0';
  String result = '0';
  String exprassion = '';
  
  void btnOnClick(String btnText){
    setState(() {
      if (btnText == 'C') {
        eqution = '0';
        btnText = '0';
        result = '0';
      }else if (btnText == '⌫') {
        eqution = eqution.substring(0, eqution.length - 1);
        if (eqution == '') {
          eqution = '0';
        }
      }else if (btnText == '=') {

        exprassion = eqution;
        exprassion = exprassion.replaceAll('×', '*');
        exprassion = exprassion.replaceAll('÷', '/');
        try {
          Parser p = Parser();
          Expression exp = p.parse(exprassion);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = 'Error';
        }
      }else{
        if (eqution == '0') {
          eqution = btnText;
        }else{
          eqution = eqution + btnText;
        }
      }
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
                  eqution.text.xl3.color(context.accentColor).overflow(TextOverflow.ellipsis).make(),
                  result.text.xl5.color(context.accentColor).overflow(TextOverflow.ellipsis).make(),
                ],
              ),
            ), 
            ),
            Expanded(flex: 2, 
              child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.accentColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: 'C', btnOnClick: btnOnClick,),2.widthBox,
                        CalculatorButton(button_text: '⌫', btnOnClick: btnOnClick,),2.widthBox,
                        CalculatorButton(button_text: '<', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '÷', btnOnClick: btnOnClick),
                      ],
                    ),
                  ),2.heightBox,
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '9', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '8', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '7', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '×', btnOnClick: btnOnClick),2.widthBox,
                      ],
                    ),
                  ),2.heightBox,
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '6', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '5', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '4', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '-', btnOnClick: btnOnClick),
                      ],
                    ),
                  ),2.heightBox,
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '1', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '2', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '3', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '+', btnOnClick: btnOnClick),2.widthBox,
                      ],
                    ),
                  ),2.heightBox,

                  Expanded(
                    child: Row(
                      children: [
                        CalculatorButton(button_text: '0', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '00', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '.', btnOnClick: btnOnClick),2.widthBox,
                        CalculatorButton(button_text: '=', btnOnClick: btnOnClick),
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