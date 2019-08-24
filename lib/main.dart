import 'package:flutter/material.dart';
import 'package:flutter_app/ScaffoldWidget.dart';
import 'package:flutter_app/SimpleListView.dart';

void main() {
  runApp(new ScaffoldWidget());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Bar ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          actions: <Widget>[
            Icon(Icons.settings)
          ],
          backgroundColor: Colors.green,
          elevation: 12.0,
          leading: Icon(Icons.menu),
          bottom: PreferredSize(child: Icon(Icons.directions_walk), preferredSize: Size.fromHeight(12.0)),
          brightness: Brightness.light,
        ),
        body: new SimpleListView(),
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


