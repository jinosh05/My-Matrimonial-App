import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matrimony/login_page.dart';
import 'package:matrimony/main.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  Splash2State createState() => Splash2State();
}

class Splash2State extends State<Splash2> {
  int _currentPage = 0;
  final pagecontroller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 2;
      }

      pagecontroller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: PageView(
            controller: pagecontroller,
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )),
                  child: const Image(
                    image: AssetImage("img/100.jpg"),
                    fit: BoxFit.cover,
                  )),
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )),
                  child: const Image(
                    image: AssetImage("img/200.jpg"),
                    fit: BoxFit.cover,
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 3,
                      ),
                      image: const DecorationImage(
                          image: AssetImage(
                            "img/300.jpg",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          // color: Colors.blue[500],
                          // elevation: 5,
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MyApp()));
                        },
                        child: const Text(
                          "Skip For Now",
                          style: TextStyle(color: Colors.white),
                        ),
                        // color: Colors.red,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
