import 'package:flutter/material.dart';
import 'package:learn_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogHeader extends StatelessWidget {
  const catalogHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),   //font-size - fontwidgh - color from theme page
        "Tranding Products".text.xl2.make(),
      ],
    );
  }
}