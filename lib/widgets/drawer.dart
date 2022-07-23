import 'dart:ui';

import 'package:bsk_flutter_1/singup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlimage =
        "https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/jetsbq3neeapdklo_1632122050.jpeg";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "SK RAMIZ",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "sk_ramiz@yahoo.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(urlimage),
                  )),
              padding: EdgeInsets.zero,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text(
                "Email",
                textScaleFactor: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }                                                                    
}
