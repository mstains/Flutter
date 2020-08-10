import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("${math.pi / 2}");
    return Scaffold(
      appBar: AppBar(
        title: Text("变换 Transform"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        //宽度填满屏幕
        width: double.infinity,
        child: Column(
          //纵轴居中
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //变换
            Transform(
              alignment: Alignment.topRight,
              //沿Y轴倾斜0.3弧度
              transform: Matrix4.skewY(0.3),
              child: Container(
                color: Colors.deepOrange,
                padding: EdgeInsets.all(8.0),
                child: Text('hello word'),
              ),
            ),

            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 8, bottom: 8),
              padding: EdgeInsets.only(top: 8, bottom: 8),
              color: Colors.deepOrangeAccent,
              child: Text(
                "平移",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Transform.translate(
                //默认原点为控件左上角，左移20像素，向上平移5像素
                offset: Offset(-20, -5),
                child: Text("hello word"),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 8, bottom: 38),
              padding: EdgeInsets.only(top: 8, bottom: 8),
              color: Colors.deepOrangeAccent,
              child: Text(
                "旋转",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Transform.rotate(
                angle: math.pi / 2,
                child: Text("hello word"),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 38, bottom: 8),
              padding: EdgeInsets.only(top: 8, bottom: 8),
              color: Colors.deepOrangeAccent,
              child: Text(
                "缩放",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Transform.scale(
                scale: 1.6,
                child: Text("Hello Word"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Transform.scale(
                  scale: 1.5,
                  child: Text("Hello Word"),
                ),
                Text(
                  "你好",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                )
              ],
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 18, bottom: 8),
              padding: EdgeInsets.only(top: 8, bottom: 8),
              color: Colors.deepOrangeAccent,
              child: Text(
                "RotatedBox控件",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RotatedBox(
                  //旋转90度(1/4圈)
                  quarterTurns: 1,
                  child: Text("Hello Word"),
                ),
                Text(
                  "你好",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
