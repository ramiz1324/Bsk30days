//import 'dart:html';
import 'package:bsk_flutter_1/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Welcome",
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password", hintText: "Enter Password"),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 85),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                                elevation: 10,
                                shadowColor: Colors.amber,
                                side: BorderSide(
                                    color: Colors.amber, width: 0.8)),
                            onPressed: () {
                               Navigator.pushNamed(context, '/register');;
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.amber),
                            )),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.amber, width: 0.8),
                            shadowColor: Colors.amber,
                            elevation: 10,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/singup');
                          },
                          //style: ElevatedButton.styleFrom(
                          //primary: Colors.brown
                          //),

                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.amber),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
