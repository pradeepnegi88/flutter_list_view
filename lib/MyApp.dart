import 'package:flutter/material.dart';

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
          actions: <Widget>[Icon(Icons.settings)],
          backgroundColor: Colors.green,
          elevation: 12.0,
          leading: Icon(Icons.menu),
          bottom: PreferredSize(
              child: Icon(Icons.directions_walk),
              preferredSize: Size.fromHeight(12.0)),
          brightness: Brightness.light,
        ),
        body: Center(
          child: Image(image: AssetImage("assets/image.jpeg")),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            Navigator.pop(context);
          }, child: Text("Go Back"),),
      ),
    );
  }
}
