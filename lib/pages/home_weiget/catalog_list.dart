import 'package:bsk_flutter_1/pages/home_details.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../homepage.dart';
import '../../model/catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeDetail(catalog: catalog),
          ),
          ),
          child: CatalogItem(
            catalog: catalog
            )
            );
      },
    );
  }
}




class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image),),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.color(context.accentColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            HeightBox(10),
            ButtonBar(
              
              alignment: MainAxisAlignment.spaceBetween,
              children: ["\$${catalog.price}".text.bold.make(),
              
              ElevatedButton(onPressed: (){}, child: "Add Cart".text.make(),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor
              ),
              shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              
              )
              ],
            )
          ],
        ))
      ],
    )).color(context.theme.cardColor).rounded.square(150).make().py16();
  }
}
