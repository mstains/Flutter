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
          child: Column(
        children: <Widget>[
          Flex(
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
          Container(
            height: 300,
            child:   Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.cyan,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                //空白占比控件
                Spacer(flex: 1),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

          )

        ],
      )),
    );
  }
}
