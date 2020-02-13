import 'package:flutter/material.dart';

class FastIntro extends StatelessWidget {
  const FastIntro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: new Container(
        child: new Center(
          child : new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                'Hello',
                style: TextStyle(fontSize: 30),
              ),
              RaisedButton( //                         <--- Button
                child: Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}