import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("button控件"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text("漂浮",style: TextStyle(color: Colors.white),),
                elevation: 0,
                highlightElevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                color: Colors.red,
                highlightColor: Colors.blue,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "扁平按钮",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                highlightColor: Colors.red,
                colorBrightness: Brightness.dark,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text("默认边框按钮"),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
