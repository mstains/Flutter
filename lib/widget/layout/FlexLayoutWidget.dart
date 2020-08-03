import 'package:flutter/material.dart';

class FlexLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("弹性布局（Flex）"),
      ),
      body: Container(
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.red,
                )),
            Expanded(
                flex: 7,
                child: Container(
                  height: 30,
                  color: Colors.orange,
                )),
            Spacer(flex: 1)
          ],
        ),
      ),
    );
  }
}
