import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: "Cart".text.black.make(),
      ),
    );
  }
}
