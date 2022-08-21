import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
         _CartList().p32().expand(),
         Divider(),
         _CartTotal(),
        ],
      ),
    );
  }
}



class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         "\$9999".text.xl5.color(context.theme.colorScheme.secondary).make(),
         30.widthBox,
         ElevatedButton(onPressed: (){}, 
         child: "Buy".text.make(),
         // ignore: deprecated_member_use
         style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)),
         )
      ],)
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: ((context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(icon: Icon(Icons.remove_circle_outline),
        onPressed: (() {}),
      ),
      title: "Item 1".text.make(),
      )
      ),
    );
  }
}
