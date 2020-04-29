import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Map todos = {
    "Mathématiques": false,
    "Francais": false,
    "SVT": false,
    "SES": false,
    "Anglais": false,
  };

  List<Widget> todoList(){
    List<Widget> l = [];
    todos.forEach((key, value) {
      Row row = new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(key),
          Checkbox(value: value, onChanged: (bool b){
            setState(() {
              todos[key] = b;
            });
          })
        ],
      );
      l.add(row);
    });
    return l;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: todoList(),
        )
      )
    );
  }
}
