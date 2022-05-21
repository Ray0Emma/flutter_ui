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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Top Stories'),
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
                    child: Image.asset('assets/user_flutter.png'),
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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/flutter_ntr.jfif', fit: BoxFit.fill),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                  child: Text(
                    'Addiction when Gambling Becomes a problem',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
              child: Row(
                children: [
                  // Container(
                  //   width: 55,
                  //   height: 55,
                  //   decoration: const BoxDecoration(
                  //     color: Colors.yellow,
                  //     shape: BoxShape.circle,
                  //   ),
                  // ),
                  CircleAvatar(
                    child: Image.asset('assets/user_flutter.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [Text(' nom utilisateur'), Text('durée')],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
