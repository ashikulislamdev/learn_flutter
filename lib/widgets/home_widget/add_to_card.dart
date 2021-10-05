import 'package:flutter/material.dart';
import 'package:learn_app/modals/card.dart';
import 'package:learn_app/modals/catalog.dart';
import 'package:learn_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCard extends StatefulWidget {
  final Item catalog;
  const AddToCard({
    Key? key, required this.catalog,
  }) : super(key: key);

  @override
  __AddToCardState createState() => __AddToCardState();
}

class __AddToCardState extends State<AddToCard> {
        final _card = CardModel();
  @override
  Widget build(BuildContext context) {
    bool isInCard = _card.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: (){

        if (!isInCard) {      //one product add only one
          isInCard = isInCard.toggle();
          final _catalog = CatalogModal();
          _card.catalog = _catalog;

          _card.add(widget.catalog);
          setState(() { });
        }
      }, 
      child: isInCard? Icon(Icons.done) : "Buy".text.make(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
        shape: MaterialStateProperty.all(StadiumBorder())
      ),
    );
  }
}