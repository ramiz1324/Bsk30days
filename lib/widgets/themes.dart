import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      buttonColor: LightBlue,
      canvasColor: creamcolor, //primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
        // toolbarTextStyle: TextStyle(color: Colors.black),
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
          .copyWith(secondary: Colors.deepPurple));

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamcolor,
      buttonColor: LightBlue,
      accentColor: Colors.white,
      //primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme.copyWith(
              headline6: TextStyle(color: Colors.white),
              //toolbarTextStyle:
            ),
      ));
  //primarySwatch: Colors.deepPurple);

  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Vx.gray900;

  static Color darkblue = Color.fromARGB(255, 90, 88, 88);
  static Color LightBlue = Vx.indigo500;
}


