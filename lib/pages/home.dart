import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:learn_app/modals/catalog.dart';
import 'package:learn_app/widgets/drawer.dart';
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
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,   //EdgeInsets.all(value)
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children: [
              catalogHeader(),
              //CatalogList(),

              if (CatalogModal.items!=null && CatalogModal.items.isNotEmpty) 
                CatalogList().expand()
              else
                  CircularProgressIndicator().centered().expand(),

            ],
          ),
        ),
      ),
    );
  }
}

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

class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModal.items.length,
      itemBuilder: (context, index){
        final catalog = CatalogModal.items[index];
        return CatalogItem(catalog:catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) :
  assert(catalog !=null),
   super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(
            image: catalog.image  ,
          ),

          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),   //text - large(lg/xl) - bolt
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.lg.make(),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: "Buy".text.make(),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                  )
                ],
              ).pOnly(right: 8),
            ],
          ),),
        ],
      ),
    ).white.rounded.square(150).make().py16();    //'container - color rounded(lg-md)- square - virtically padding
  }
}

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
          ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);    //imageBox - rounded - padding all - color - halp-width(w32/40/..)
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