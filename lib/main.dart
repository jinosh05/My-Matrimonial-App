import 'package:matrimony/RegisterPage.dart';
import 'package:matrimony/splash2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Splash2(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("matrimony "),
        toolbarHeight: 40,
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Splash2()));
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            color: Colors.red,
          )
        ],
      ),
      drawer: Drawer(
        elevation: 10,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("guest@mymatrimony.com"),
              accountName: Text("Guest"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink[100],
                child: Icon(Icons.account_circle),
              ),
            ),
            ListTile(
              title: Text("Search",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: Icon(Icons.search),
              onTap: () {},
            ),
            ListTile(
              title: Text("About us",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: Icon(Icons.account_box),
              onTap: () {},
            ),
            ListTile(
              title: Text("Help",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: Icon(Icons.contact_support),
              onTap: () {},
            ),
            ListTile(
              title: Text("Contact us",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: Icon(Icons.contacts_outlined),
              onTap: () {},
            ),
            ListTile(
              title: Text("Settings",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage('img/free.png'),
              height: 370,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Register()));
              },
              child: Text(
                "Register Now",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.redAccent,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Membership Plan",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            )
          ],
        ),
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
