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
        body: new ListViewSeparated(),
      ),
    );
  }
}

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, position) {
          return Card(
            child: Text("Sample Data is $position"),
          );
        },
        separatorBuilder: (context, position) {
          return Card(
            child: Text(
              "Sample Data is $position",
              style: TextStyle(color: Colors.green),
            ),
          );
        },
        itemCount: 10);
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, position) {
      return Card(
        child: Text("Sample Data is $position"),
      );
    });
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
