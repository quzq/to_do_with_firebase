import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'title'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String _jsonString = '''
  [
    {"title": "たいとる１", "score": 12 },
    {"title": "たいｒｒとる１", "score": 32 },
    {"title": "たいとる１", "score": 32 },
    {"title": "たいｒとる１", "score": 3 },
    {"title": "えたいとる１", "score": 2 },
    {"title": "たいとるｒ１", "score": 3312 },
    {"title": "たいえとる１", "score": 12 },
    {"title": "たいえとるえ１", "score": 212 },
  ]
''';

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //List<Map> _listData = jsonDecode(_jsonString);
  List _listData = [
    {'title': 'ssss', 'score': 23},
    {'title': 'ssress', 'score': 32},
    {'title': 'sstrss', 'score': 2},
    {'title': 's443sss', 'score': 32},
    {'title': 'ss7kss', 'score': 5232},
    {'title': 'ssgdfsgsdss', 'score': 25},
    {'title': 'ssfds4s', 'score': 522},
    {'title': 'ss435ss', 'score': 25},
    {'title': 'ssss', 'score': 23},
    {'title': 'ssress', 'score': 32},
    {'title': 'sstrss', 'score': 2},
    {'title': 's443sss', 'score': 32},
    {'title': 'ss7kss', 'score': 5232},
    {'title': 'ssgdfsgsdss', 'score': 25},
    {'title': 'ssfds4s', 'score': 522},
    {'title': 'ss435ss', 'score': 25},
  ];

  Widget _menuItem(String title) {
    return GestureDetector(
      child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
              border: new Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey))),
          child: Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ],
          )),
      onTap: () {
        print("onTap called.");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            width: double.infinity,
            child: ListView.builder(
                itemCount: _listData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("* " + _listData[index].toString()),
                  );
                })));
  }
}
