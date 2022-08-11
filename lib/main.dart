import 'package:bsk_flutter_1/appbar.dart';
import 'package:bsk_flutter_1/homepage.dart';
import 'package:bsk_flutter_1/loginpage.dart';
import 'package:bsk_flutter_1/pages/cartpage.dart';
import 'package:bsk_flutter_1/pages/home_details.dart';
import 'package:bsk_flutter_1/pages/home_weiget/catalog_header.dart';
import 'package:bsk_flutter_1/register.dart';
import 'package:bsk_flutter_1/singup.dart';
import 'package:bsk_flutter_1/widgets/themes.dart';
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
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: "BSK",
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),

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
}
