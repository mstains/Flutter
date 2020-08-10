import 'package:flutter/material.dart';
import 'package:flutterinit/widget/container/ConstrainedBoxWidget.dart';
import 'package:flutterinit/widget/layout/RowWidget.dart';

import 'AlignLayoutWidget.dart';
import 'ClipRoute.dart';
import 'ContainerWidget.dart';
import 'DecoratedBoxLayoutWidget.dart';
import 'FlexLayoutWidget.dart';
import 'ScaffoldWidget.dart';
import 'StackLayoutWidget.dart';
import 'TransformWidget.dart';
import 'WrapLayoutWidget.dart';

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
                child: Text("线性布局 DecoratedBox"),
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
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WrapLayoutWidget()));
              },
              child: Text("流式布局Wrap和Flow"),
            ),
            OutlineButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StackLayoutWidget();
                }));
              },
              child: Text("层叠布局 Stack、Positioned"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AlignLayoutWidget()));
              },
              child: Text("对齐与相对定位（Align）"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConstrainedBoxWidget()));
              },
              child: Text("尺寸限制类容器"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DecoratedBoxLayoutWidget()));
              },
              child: Text("装饰容器 DecoratedBox"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransformWidget()));
              },
              child: Text("变换 Transform"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContainerWidget()));
              },
              child: Text("Container布局"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScaffoldWidget()));
              },
              child: Text("Scaffold"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ClipRoute()));
              },
              child: Text("剪裁"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              color: Colors.red,
              textColor: Colors.white,
              //按下颜色
              highlightColor: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
