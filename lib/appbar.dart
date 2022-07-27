import 'package:flutter/material.dart';

class Appber extends StatefulWidget {
  const Appber({Key? key}) : super(key: key);

  @override
  State<Appber> createState() => _AppberState();
}

class _AppberState extends State<Appber> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          //backgroundColor: Colors.purple,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.red],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          bottom: TabBar(indicatorWeight: 5, tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.star),
              text: "feed",
            ),
            Tab(
              icon: Icon(Icons.face),
              text: "Profile",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Setting",
            )
          ]),
          title: Text("HotStar"),
          centerTitle: true,
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.menu),
            onPressed: (() {
              print("hello");
            }),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                color: Colors.white,
                icon: Icon(Icons.notifications_none)),
            IconButton(
                onPressed: () {},
                color: Colors.white,
                icon: Icon(Icons.search)),
          ],
        ),
        body: TabBarView(children: [
          
          buildPage('HomePage'),
          buildPage('feed'),
          buildPage('profile'),
          buildPage('settings'),
        ]),
      ),
    );
   
  }
   Widget buildPage(String text) => Center(
      child: Text(text, style: TextStyle(fontSize: 40),),
    );
}
