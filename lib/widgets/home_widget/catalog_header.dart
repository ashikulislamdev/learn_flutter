
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
        "Catalog App".text.xl5.bold.color(context.theme.accentColor).make(),   //font-size - fontwidgh - color from theme page
        "Tranding Products".text.color(context.theme.accentColor).xl2.make(),
      ],
    );
  }
}