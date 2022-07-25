import 'package:bsk_flutter_1/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
