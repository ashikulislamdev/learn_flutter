
import 'package:flutter/material.dart';
import 'package:learn_app/modals/catalog.dart';
import 'package:learn_app/pages/home_detail_page.dart';
import 'package:learn_app/widgets/home_widget/add_to_card.dart';
import 'package:learn_app/widgets/home_widget/catalog_image.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModal.items.length,
      itemBuilder: (context, index){
        final catalog = CatalogModal.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context, MaterialPageRoute(
              builder: (context) =>HomeDetailPage(catalog: catalog),
              //builder: (context) =>HomeDetailPage(catalog: CatalogModal.getById(2)),    //test-product get by id
            )
          ),
          child: CatalogItem(catalog:catalog)
        );
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
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image  ,
            ),
          ),

          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(context.accentColor).bold.make(),   //text - large(lg/xl) - bolt
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.lg.make(),
                  AddToCard(catalog: catalog),
                ],
              ).pOnly(right: 8),
            ],
          ),),
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();    //'container - color rounded(lg-md)- square - virtically padding
  }
}

