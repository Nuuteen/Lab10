import 'package:flutter/material.dart';
import 'package:flutter_application_final/foodmenu.dart';
import 'package:flutter_application_final/math.dart';
import 'package:flutter_application_final/menu.dart';
import 'package:flutter_application_final/secon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
              IconButton(icon: Icon(Icons.logout), onPressed: () {}),
            ]),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

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
            child: const Text('     โปรแกรมนับเลข     '),
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
            child: const Text('         เมนูอาหาร          '),
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
            child: const Text('      เครื่องคิดเลข        '),
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
            child: const Text('     เลือกเมนูอาหาร      '),
          ),
        ],
      ),
    );
  }
}
