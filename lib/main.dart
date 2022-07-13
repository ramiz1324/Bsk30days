import 'package:bsk_flutter_1/homepage.dart';
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
      home: Homepage()
          
    );
  }
}
