import 'package:Matrimony/RegisterPage.dart';
import 'package:Matrimony/SearchPage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue[200],
                width: 3,
              ),
              image: DecorationImage(
                  image: AssetImage(
                    "img/back.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10, right: 10)),
                  Image(
                    image: AssetImage("img/1.png"),
                    width: 100,
                  ),
                ],
              ),
              Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        height: 95,
                        padding: EdgeInsets.all(25),
                        child: TextFormField(
                          // ignore: missing_return
                          validator: (value) {
                            if (value == null) {
                              return "Please Enter your Username";
                            } else if (value.length >= 10) {
                              return "Name too Long";
                            } else if (value.length <= 5) {
                              return "Name too short";
                            }
                          },
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintText: "Enter E-mail",
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: TextFormField(
                          // ignore: missing_return
                          validator: (value) {
                            if (value == null) {
                              return "Please Enter your Password";
                            } else if (value.length >= 10) {
                              return "Password too Long";
                            } else if (value.length <= 5) {
                              return "Password too short";
                            }
                          },

                          obscureText: !checkboxvalue,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50)),
                    Checkbox(
                      value: checkboxvalue,
                      onChanged: (value) {
                        setState(() {
                          checkboxvalue = value;
                        });
                      },
                      checkColor: Colors.blue,
                    ),
                    Text("Show Password",
                        style: TextStyle(
                            color: Colors.pink[300],
                            fontSize: 13,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {
                        if (formkey.currentState.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SearchPage()));
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 25, left: 15)),
                  RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    color: Colors.transparent,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("Don't have an account?",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Register() ));
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(fontSize: 16),
                      ),
                      color: Colors.pink,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
