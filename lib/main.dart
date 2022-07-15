
import 'package:bsk_flutter_1/loginpage.dart';
import 'package:bsk_flutter_1/register.dart';
import 'package:bsk_flutter_1/singup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bangla Sahayata Kendra",
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          primarySwatch: Colors.blue),

      home: LoginPage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
     routes: {
        "/login": (context) => LoginPage(),
        "/register":((context) => HomePage2()),
        "/singup":((context) => Home()),

      },
    );
  }
}
