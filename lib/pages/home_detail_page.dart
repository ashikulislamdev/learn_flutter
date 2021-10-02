import 'package:flutter/material.dart';
import 'package:learn_app/widgets/themes.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

import 'package:learn_app/modals/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })
  : assert(catalog!=null),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.red800.xl4.make(),
          ElevatedButton(
            onPressed: (){}, 
            child: "Buy".text.xl2.bold.make(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
              shape: MaterialStateProperty.all(StadiumBorder())
            ),
          ).wh(100, 50),
        ],
      ).p32(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).h32(context),
            ),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEX,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.lg.color(MyTheme.darkBluishColor).xl4.bold.make(),   //text - large(lg/xl) - bolt
                      catalog.desc.text.textStyle(context.captionStyle).center.xl.make(),
                      10.heightBox,
                      "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content".text.center.make().p16(),
                    ],
                  ).py64(),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
