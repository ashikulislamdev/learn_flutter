import 'package:flutter/material.dart';
import 'package:learn_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CardPage extends StatelessWidget {
  const CardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          cardList().p32().expand(),
          Divider(),
          _cardTotal(),
        ],
      ),
    );
  }
}


class _cardTotal extends StatelessWidget {
  const _cardTotal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$999".text.xl4.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying Not supported yet".text.make()
              )
            );
            }, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
            ),
            child: "Pay Now".text.bold.make().w16(context)
          )
        ],
      ),
    );
  }
}



class cardList extends StatefulWidget {
  const cardList({ Key? key }) : super(key: key);

  @override
  _cardListState createState() => _cardListState();
}

class _cardListState extends State<cardList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.download_done_outlined),
        trailing: IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.remove_circle_outline)
        ),
        title: "Items".text.make(),
      )
    );
  }
}