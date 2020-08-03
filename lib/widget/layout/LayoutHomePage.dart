import 'package:flutter/material.dart';
import 'package:flutterinit/widget/layout/RowWidget.dart';

import 'FlexLayoutWidget.dart';

class LayoutHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("布局"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 18, bottom: 8),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RowWidget();
                  }));
                },
                child: Text("线性布局"),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FlexLayoutWidget()));
              },
              child: Text("弹性布局（Flex）"),
            )
          ],
        ),
      ),
    );
  }
}
