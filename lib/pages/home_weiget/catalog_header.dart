import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';



class CatalogHeader extends StatefulWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  State<CatalogHeader> createState() => _CatalogHeaderState();
}

class _CatalogHeaderState extends State<CatalogHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog  App".text.bold.xl5.make(),
        "Trainding Products".text.xl2.make()
      ],
    );
  }
}