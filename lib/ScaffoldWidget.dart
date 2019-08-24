import 'package:flutter/material.dart';
import 'package:flutter_app/ListViewBuilder.dart';
import 'package:flutter_app/MyApp.dart';

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new MyApp()));
        },
        child: Text("FAB"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm), title: Text("Alaram"))
      ]),
      persistentFooterButtons: <Widget>[Text("Persistence Footer Button")],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.pinkAccent),
            ),
            Text("Menu1"),
            Text("Menu2"),
            Text("Menu3"),
          ],
        ),
      ),
      body: ListViewBuilder(),
    );
  }
}
