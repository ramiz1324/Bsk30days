import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "Bangla Sahayata Kendra",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(

            title: Text(
              "Bangla Sahayata Kendra",
              style: TextStyle(color: Colors.black, fontFamily: ""),
            ),
            centerTitle: true,
          ),
          drawer: Drawer(),
          body: Text()
          )
          
    );
  }
}
