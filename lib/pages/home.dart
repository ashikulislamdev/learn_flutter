import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_app/utlts/routes.dart';
import 'package:learn_app/widgets/drawer.dart';
import 'package:learn_app/widgets/home_widget/catalog_header.dart';
import 'package:learn_app/widgets/home_widget/catalog_list.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

import 'package:learn_app/modals/catalog.dart';
import 'package:learn_app/widgets/themes.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({ Key? key }) : super(key: key);

  @override
  _HomaPageState createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  final int days = 30;
  final String name = "White";

  var crossAxisAlignment;

  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async {
    //await Future.delayed(Duration(seconds: 2));
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cardRoute),
        child: Icon(Icons.shopping_cart_outlined),
        backgroundColor: context.theme.buttonColor,
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,   //EdgeInsets.all(value)
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children: [
              catalogHeader(), 
              //CatalogList(),

              if (CatalogModal.items!=null && CatalogModal.items.isNotEmpty) 
                CatalogList().py16().expand()
              else
                  CircularProgressIndicator().centered().expand(),

            ],
          ),
        ),
      ),
    );
  }
}




/*
   final dummylist = List.generate(25, (index) => CatalogModal.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
        centerTitle: true,
      ),

      drawer: MyDrawer(),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: // (CatalogModal.items !=null && CatalogModal.items.isNotEmpty)? */ /* ListView.builder(
          itemCount: CatalogModal.items.length,
          itemBuilder: (context, index) => ItemWidget( item: CatalogModal.items[index]),
        )  /   / : Center(child: CircularProgressIndicator(),) 
        
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
          ), 
          itemBuilder: (context, index){
            final item = CatalogModal.items[index];
            return GridTile(
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Image.network(item.image),
              ),
              header: Container(
                child: Text(item.name, style: TextStyle(color: Colors.white),),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
              ),
              footer: Container(
                child: Text(item.price.toString(), style: TextStyle(color: Colors.white),),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            );
          },
          itemCount: CatalogModal.items.length,
        ),
      ),
    );



 jank
Container(
  child: Center(
    child: Text(context.runtimeType.toString()),
    child: Text("Wellcome to $days of fluuter by $name"),
  ),
) */