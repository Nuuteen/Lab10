import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Searchmenu2 extends StatelessWidget {
  const Searchmenu2({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: Text("เมนูอาหาร"), actions: <Widget>[
        IconButton(icon: Icon(Icons.logout), onPressed: () {}),
      ]),
      body: Menu2(),
    );
  }
}

class Menu2 extends StatefulWidget {
  const Menu2({Key key}) : super(key: key);

  @override
  State<Menu2> createState() => _MenuState();
}

class _MenuState extends State<Menu2> {
  List<List<dynamic>> foodLists = [
    [
      "https://i.pinimg.com/564x/ce/70/65/ce706553e3e6f4373f953148ed5e6826.jpg",
      "Hamburger",
      159
    ],
    [
      "https://i.pinimg.com/564x/40/4e/b5/404eb50e049e33459e8493277919e741.jpg",
      "French fries",
      99
    ],
    [
      "https://i.pinimg.com/564x/8a/10/00/8a100000f40a519cd068c7549f792f54.jpg",
      "CoCa.Cola",
      15
    ],
    [
      "https://i.pinimg.com/564x/17/ee/0d/17ee0d1c0b91570534f8b38ea1438ced.jpg",
      "Pizza Hawaiian",
      259
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodLists[index][0],
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " ${foodLists[index][1]}",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "ราคาอาหาร ${foodLists[index][2]} ฿",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
