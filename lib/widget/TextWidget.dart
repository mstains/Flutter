import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("1232131"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Hello Word",
                textAlign: TextAlign.left,
              ),
              Text(
                "Hello Word" * 15,
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "Hello Word",
                textScaleFactor: 1.5,
                style: TextStyle(
                    background: Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
