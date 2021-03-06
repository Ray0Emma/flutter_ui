// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful.

  // This class is the configuration for the state.

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Stories',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Samedi 20 Mai',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Stack(children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset('assets/user_flutter.jpg'),
                      ),
                    ),
                    Positioned(
                      right: 4,
                      top: 1,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.white,
                              width: 14.0,
                              style: BorderStyle.solid),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
            SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/flutter_ntr.jpg', fit: BoxFit.fill),
                Padding(
                  padding: EdgeInsets.only(left: 13, top: 13, bottom: 15),
                  child: Text(
                    'Addiction When Gambling Becomes A Problem',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 13, top: 10, bottom: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 19,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(19),
                      child: Image.asset('assets/user_flutter.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Farah Ait Elahmadi',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        'dur??e',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              padding: EdgeInsets.only(left: 13, right: 13, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in."),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_rounded,
                        color: Colors.pink,
                        size: 24.0,
                        semanticLabel: 'Pink Heart Icon',
                      ),
                      SizedBox(width: 10), // give it width
                      Text('1125',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 30), // give it width
                      Icon(
                        Icons.comment_outlined,
                        color: Colors.grey[400],
                        size: 24.0,
                      ),
                      SizedBox(width: 10), // give it width
                      Text(
                        '348',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              child: Text(
                " To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment. ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(selectedItemColor: Colors.pink, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined), label: 'Setting'),
      ]),
    );
  }
}
