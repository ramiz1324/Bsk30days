//import 'dart:html';
import 'package:bsk_flutter_1/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, '/register');
      setState(() {
        change = false;
      });
    }
  }

  String name = "";
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "User Name", hintText: "Enter User Name"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be Empty ";
                      }
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be Empty ";
                      } else if (value.length < 6) {
                        return "Password lenght should be al least 6";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 85),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Material(
                            borderRadius:
                                BorderRadius.circular(change ? 50 : 8),
                            color: Colors.purple,
                            child: InkWell(
                              splashColor: Colors.green,
                              onTap: () => movetohome(context),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 40,
                                width: change ? 50 : 100,
                                alignment: Alignment.center,
                                child: change
                                    ? Icon(
                                        Icons.done,
                                        color: Color.fromARGB(255, 240, 235, 243),
                                      )
                                    : Text(
                                        "login",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 196, 192, 182),
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                // decoration: BoxDecoration(
                                //     color: Color.fromARGB(255, 92, 60, 148),
                                //     borderRadius:
                                //         BorderRadius.circular(change ? 30 : 9)),
                              ),
                            ),
                          ),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //       primary: Color.fromARGB(221, 113, 88, 161),
                          //       textStyle: TextStyle(
                          //         fontStyle: FontStyle.italic,
                          //       ),
                          //       elevation: 10,
                          //       shadowColor: Colors.amber,
                          //       side:
                          //           BorderSide(color: Colors.amber, width: 0.8)),
                          //   onPressed: () {
                          //     Navigator.pushNamed(context, '/register');
                          //     ;
                          //   },
                          //   child: Text(
                          //     "Login",
                          //     style: TextStyle(color: Colors.amber),
                          //   ),
                          // ),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     primary: Color.fromARGB(221, 113, 88, 161),
                          //     side: BorderSide(color: Colors.amber, width: 0.8),
                          //     shadowColor: Colors.amber,
                          //     elevation: 10,
                          //   ),
                          //   onPressed: () {
                          //     Navigator.pushNamed(context, '/singup');
                          //   },
                          //   //style: ElevatedButton.styleFrom(
                          //   //primary: Colors.brown
                          //   //),

                          //   child: Text(
                          //     "Register",
                          //     style: TextStyle(color: Colors.amber),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
