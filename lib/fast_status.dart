import 'package:flutter/material.dart';

class FastStatus extends StatelessWidget {
  const FastStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FastStatus Screen"),
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