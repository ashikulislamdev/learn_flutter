
import 'package:flutter/material.dart';
import 'package:learn_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


String input = '';

class MyCalculator extends StatefulWidget {
  const MyCalculator({ Key? key }) : super(key: key);

  @override
  My_CalculatorState createState() => My_CalculatorState();
}

class My_CalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}