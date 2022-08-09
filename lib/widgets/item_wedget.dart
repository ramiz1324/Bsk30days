import 'package:bsk_flutter_1/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
final Item rubi;

  const ItemWidget({super.key, required this.rubi}) : assert(rubi != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          onTap: () {
            print("${rubi.name} pressed");
          },
          leading: Image.network(rubi.image),
          title: Text(rubi.name),
          subtitle: Text(rubi.desc),
          trailing: Text(
            "\$${rubi.price}",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            textScaleFactor: 1.5,
          ),
        ),
      ),
    );
  }
}   