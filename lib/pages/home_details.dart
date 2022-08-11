import 'package:bsk_flutter_1/model/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;

  const HomeDetail({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl4.red400.bold.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 90, 88, 88)),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context),
          Expanded(
              child: VxArc(
            height: 25.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              width: context.screenWidth,
              color: Colors.white,
              child: Column(
                children: [
                  catalog.name.text.xl4.bold.make(),
                  catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                  HeightBox(10),
                ],
              ).py32(),
            ),
          )),
        ],
      ),
    );
  }
}
