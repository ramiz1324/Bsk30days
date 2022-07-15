import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon search = Icon(Icons.search);
  Widget v_text = Text("Search_Bar");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: v_text,
        //leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (this.search.icon == Icons.search) {
                  this.search = Icon(Icons.cancel);
                  this.v_text = TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(border: InputBorder.none),
                    style: TextStyle(color: Colors.white70, fontSize: 16.0),
                  );
                } else {
                  this.search = Icon(Icons.search);
                  this.v_text = Text("Srchbar");
                }
              });
            },
            icon: search,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        // bottom: PreferredSize(
        //   preferredSize: Size(50, 50),
        //   child: Container(),
        // ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("click back"),
            ),
            RaisedButton(
              onPressed: () {
              
              },
              splashColor: Colors.red,
              child: Text("next",
              style: TextStyle(
              color: Colors.amber,
              
              ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
