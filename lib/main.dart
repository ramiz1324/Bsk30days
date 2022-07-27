
import 'package:bsk_flutter_1/appbar.dart';
import 'package:bsk_flutter_1/homepage.dart';
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
      //themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: "BSK",
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          appBarTheme: AppBarTheme(color: Colors.white,elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme
          ),
          
          primarySwatch: Colors.blue),

      //00home: LoginPage(),
      //themeMode: ThemeMode.light,
     // darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/homepage",
     routes: {
        "/login": (context) => LoginPage(),
        "/register":((context) => HomePage2()),
        "/singup":((context) => Home()),
        "/homepage":((context) => HomePage()),
        "/appber" :(context) => Appber(),

      },
    );
  }
}
