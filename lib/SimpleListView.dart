import 'package:flutter/material.dart';

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
      scrollDirection: Axis.vertical, //Axis.horizontal,
      padding: EdgeInsets.all(12.0), // padding
      shrinkWrap: true, // if true takes only that much space needed to fit listview
      primary: true, //scrollable
    );
  }
}