import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    double temp = 30.2;
    String name = "ramiz";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bangla Sahayata Kendra",
          style: TextStyle(color: Colors.black, fontFamily: ""),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(child: Text("$days, $temp ,$name ")),
    );
  }
}
