import 'package:flutter/material.dart';
import 'package:matrimony/register_page.dart';
import 'package:matrimony/search_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool? checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue[200]!,
                width: 3,
              ),
              image: const DecorationImage(
                  image: AssetImage(
                    "img/back.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
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
                        padding: const EdgeInsets.all(25),
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
                            return null;
                          },
                          decoration: InputDecoration(
                            icon: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintText: "Enter E-mail",
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        padding: const EdgeInsets.only(left: 25, right: 25),
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
                            return null;
                          },

                          obscureText: !checkboxvalue!,
                          decoration: InputDecoration(
                            icon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: "Password",
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
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
                  const Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SearchPage()));
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                      // color: Colors.blue,
                      // textColor: Colors.white,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 25, left: 15)),
                  ElevatedButton(
                    onPressed: () {},
                    // color: Colors.transparent,
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text("Don't have an account?",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Register()));
                      },
                      // color: Colors.pink,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(25)),
                      child: const Text(
                        "Register Now",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
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
