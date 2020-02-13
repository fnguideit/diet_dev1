import 'package:flutter/material.dart';

class FastHistory extends StatelessWidget {
  const FastHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FastHistory Screen"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text('Lorem Ipsum'),
          subtitle: Text('$index'),
        );
      }),
    );
  }
}