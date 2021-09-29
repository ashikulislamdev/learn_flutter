import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_app/modals/catalog.dart';
import 'package:learn_app/widgets/drawer.dart';
import 'package:learn_app/widgets/item_widget.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({ Key? key }) : super(key: key);

  @override
  _HomaPageState createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  final int days = 30;
  final String name = "White";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);
    var productData = decodeJson["products"];
    CatalogModal.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() { });
  }
  

  @override
  Widget build(BuildContext context) {

  //final dummylist = List.generate(25, (index) => CatalogModal.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
        centerTitle: true,
      ),

      drawer: MyDrawer(),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: /* (CatalogModal.items !=null && CatalogModal.items.isNotEmpty)? */ ListView.builder(
          itemCount: CatalogModal.items.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: CatalogModal.items[index],
            );
          },
        ) /* : Center(child: CircularProgressIndicator(),) */,
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