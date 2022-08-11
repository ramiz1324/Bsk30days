import 'package:bsk_flutter_1/appbar.dart';
import 'package:bsk_flutter_1/homepage.dart';
import 'package:bsk_flutter_1/loginpage.dart';
import 'package:bsk_flutter_1/pages/cartpage.dart';
import 'package:bsk_flutter_1/pages/home_details.dart';
import 'package:bsk_flutter_1/pages/home_weiget/catalog_header.dart';
import 'package:bsk_flutter_1/register.dart';
import 'package:bsk_flutter_1/singup.dart';
import 'package:flutter/material.dart';
import 'package:bsk_flutter_1/model/catalog.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: "BSK",
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme,
            toolbarTextStyle: TextStyle(color: Colors.black),
          ),
          primarySwatch: Colors.blue),

      //00home: LoginPage(),
      //themeMode: ThemeMode.light,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      //initialRoute: "/ui", 
      initialRoute: "/homepage",

      routes: {
        "/login": (context) => LoginPage(),
        "/register": ((context) => HomePage2()),
        "/singup": ((context) => Home()),
        "/homepage": ((context) => HomePage()),
        "/appber": (context) => Appber(),
        "/mycart": (context) => MyCart(),

        //"/detail":(context) => HomeDetail(),      //"/ui": ((context) => UicataLog()) 
      },
    );
  }

  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkblue = Color(0xff403b58);
}
