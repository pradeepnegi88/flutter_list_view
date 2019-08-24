import 'package:flutter/material.dart';

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