import 'package:flutter/material.dart';

class AlignLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("对齐与相对定位（Align）"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
//              width: 120,
//              height: 120,
              color: Colors.blue[50],
              child: Align(
                alignment: Alignment.topRight,
                widthFactor: 2,
                heightFactor: 2,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
