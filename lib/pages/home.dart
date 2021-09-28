import 'package:flutter/material.dart';
import 'package:learn_app/modals/catalog.dart';
import 'package:learn_app/widgets/drawer.dart';
import 'package:learn_app/widgets/item_widget.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({ Key? key }) : super(key: key);

  final int days = 30;
  final String name = "White";
  @override
  Widget build(BuildContext context) {

  final dummylist = List.generate(25, (index) => CatalogModal.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
        centerTitle: true,
      ),

      drawer: MyDrawer(),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
    );
  }
}



/* jank
Container(
  child: Center(
    child: Text(context.runtimeType.toString()),
    child: Text("Wellcome to $days of fluuter by $name"),
  ),
) */