import 'package:flutter/material.dart';
import 'package:learn_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
            image,
          ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);    //imageBox - rounded - padding all - color - halp-width(w32/40/..)
  }
}