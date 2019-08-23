import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View Example",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Example"),
        ),
        body: new SimpleListView(),
      ),
    );
  }
}

class SimpleListView extends StatelessWidget {
  const SimpleListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text("Example 1"),
        Text("Example 2"),
        Text("Example 3"),
        Text("Example 4"),
        Text("Example 5"),
        Text("Example 6"),
        Text("Example 7"),
        Text("Example 8"),
      ],
    );
  }
}
