import 'package:flutter/material.dart';
import 'package:matrimony/register_page.dart';
import 'package:matrimony/splash2.dart';

void main() {
  runApp(const MaterialApp(
    home: Splash2(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("matrimony "),
        toolbarHeight: 40,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Splash2()));
            },
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          )
        ],
      ),
      drawer: Drawer(
        elevation: 10,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: const Text("guest@mymatrimony.com"),
              accountName: const Text("Guest"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink[100],
                child: const Icon(Icons.account_circle),
              ),
            ),
            ListTile(
              title: const Text("Search",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: const Icon(Icons.search),
              onTap: () {},
            ),
            ListTile(
              title: const Text("About us",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: const Icon(Icons.account_box),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Help",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: const Icon(Icons.contact_support),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Contact us",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: const Icon(Icons.contacts_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Settings",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const Image(
              image: AssetImage('img/free.png'),
              height: 370,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Register()));
              },
              child: const Text(
                "Register Now",
                style: TextStyle(color: Colors.white),
              ),
              // color: Colors.redAccent,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Membership Plan",
                style: TextStyle(color: Colors.white),
              ),
              // color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
