import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/foodmenu.dart';
import 'package:flutter_application_1/login_page/login_page.dart';
import 'package:flutter_application_1/math.dart';
import 'package:flutter_application_1/menu.dart';
import 'package:flutter_application_1/secon.dart';

void main() => runApp(const IndexApp());

class IndexApp extends StatelessWidget {
  const IndexApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("INDEX MENU"),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    });
                  }),
            ]),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(255, 70, 200, 161)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25)));
    BorderRadius.circular(100);
    elevation:
    10;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
            child: const Text('     ???????????????????????????????????????     '),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Searchmenu2()),
              );
            },
            child: const Text('         ???????????????????????????          '),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calculatorhmenu()),
              );
            },
            child: const Text('      ???????????????????????????????????????        '),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Searchmenu()),
              );
            },
            child: const Text('     ??????????????????????????????????????????      '),
          ),
        ],
      ),
    );
  }
}
