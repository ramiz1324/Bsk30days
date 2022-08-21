import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  String root = "";
  final secondkey = GlobalKey<FormState>();
  mini(BuildContext context) {
    if (secondkey.currentState!.validate()) {
      Navigator.pushNamed(context, '/homepage');
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6.0),
            child: Form(
              key: secondkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "SignUP $root",
                              style: TextStyle(
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,

                                //color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(255.0, 118.0, 0.0, 0.0),
                          child: Text(
                            ".",
                            style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      onChanged: ((value) {
                        root = value;
                        setState(() {});
                      }),
                      decoration: InputDecoration(
                        labelText: "EMAIL",
                        labelStyle: TextStyle(
                          fontFamily: "Times new Roman",
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (value.length < 6) {
                          return "Password should be 6 lenght";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "USER NAME",
                        labelStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter UserName";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                            onTap: () => mini(context),
                            child: Center(
                              child: Text(
                                "SINGUP",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      height: 50.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Center(
                            //   child: ImageIcon(AssetImage('assets/facebook.png')),
                            // ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Go Back",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 125.0,
                  ),
                  Container(
                      child: InkWell(
                    onTap: () {},
                    child: Text(
                      "© RIS 2021 All right reserved. By Sk Ramiz ",
                      style: TextStyle(
                          color: Colors.red, fontFamily: "Times new Roman"),
                    ),
                  ))

                  // Row(
                  //    mainAxisAlignment: MainAxisAlignment.center,
                  //   children:<Widget> [

                  //     Text('New To Spotify ?',
                  //      style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontFamily: "Montserrat",
                  //                 //fontWeight: FontWeight.bold,
                  //     ),
                  //     ),
                  //     SizedBox(
                  //       width: 10.0,
                  //     ),
                  //     InkWell(
                  //       onTap: (){},
                  //       child: Text('Register Here',
                  //        style: TextStyle(
                  //                 color: Colors.redAccent,
                  //                 fontFamily: "Montserrat",
                  //                 fontWeight: FontWeight.bold,
                  //                 decoration: TextDecoration.underline
                  //                 ),
                  //     ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ));
  }
}
