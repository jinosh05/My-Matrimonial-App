import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
   int age = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Image(
                  image: AssetImage("img/bride.png"),
                  height: 15,
                ),
                iconMargin: EdgeInsets.only(left: 0),
                text: "Bride",
              ),
              Tab(
                icon: Image(
                  image: AssetImage("img/groom.png"),
                  height: 15,
                ),
                text: "Groom",
                iconMargin: EdgeInsets.only(left: 0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Minimum Age",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Minimum Age",
                      style: TextStyle(fontSize: 20),
                    ),
                NumberPicker.integer(
                initialValue: age,
                minValue: 0,
                maxValue: 100,
                onChanged: (newValue) =>
                      setState(() => age = newValue)),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}
