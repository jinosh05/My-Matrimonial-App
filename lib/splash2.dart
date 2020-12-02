import 'dart:async';

import 'package:Matrimony/LoginPage.dart';
import 'package:Matrimony/main.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  int _currentPage = 0;
  final pagecontroller = PageController(
    initialPage: 0,
  );


@override
void initState() {
  super.initState();
  Timer.periodic(Duration(seconds: 1), (Timer timer) {
    if (_currentPage < 2) {
      _currentPage++;
    } else {
      _currentPage = 2;
    }

    pagecontroller.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 350),
      curve: Curves.easeIn,
    );
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: PageView(
           
            controller: pagecontroller,
            children: [
              Container(
                  child: Image(
                    image: AssetImage("img/100.jpg"),
                    fit: BoxFit.cover,
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  ))),
              Container(
                  child: Image(
                    image: AssetImage("img/200.jpg"),
                    fit: BoxFit.cover,
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  ))),
              Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 200,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                          },
                          child: Text("Login",style: TextStyle(color: Colors.white),),
                          color: Colors.blue[500],
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => MyApp()));
                        },
                        child: Text("Skip For Now",style: TextStyle(color: Colors.white),),
                        color: Colors.red,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 3,
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            "img/300.jpg",
                          ),
                          fit: BoxFit.cover))),
            ],
          ),
        ),
      ),
    );
  }
}
